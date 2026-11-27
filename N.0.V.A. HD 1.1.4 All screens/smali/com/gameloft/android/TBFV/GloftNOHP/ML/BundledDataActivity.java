package com.gameloft.android.TBFV.GloftNOHP.ML;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.view.Gravity;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.graphics.Color;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/** Installs the bundled game data into the directory expected by the native game. */
public final class BundledDataActivity extends Activity {
    private static final int STORAGE_PERMISSION_REQUEST = 41;
    private static final String DATA_PREFIX = "gameloft/games/nova/";
    private TextView status;

    @Override
    public void onCreate(Bundle state) {
        super.onCreate(state);
        showProgress();

        if (Build.VERSION.SDK_INT >= 23
                && checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE")
                != PackageManager.PERMISSION_GRANTED) {
            requestPermissions(new String[] { "android.permission.WRITE_EXTERNAL_STORAGE" },
                    STORAGE_PERMISSION_REQUEST);
        } else {
            prepareGameData();
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] results) {
        super.onRequestPermissionsResult(requestCode, permissions, results);
        if (requestCode == STORAGE_PERMISSION_REQUEST && results.length > 0
                && results[0] == PackageManager.PERMISSION_GRANTED) {
            prepareGameData();
        } else if (requestCode == STORAGE_PERMISSION_REQUEST) {
            showError("Storage permission is required to install the game files.");
        }
    }

    private void showProgress() {
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setGravity(Gravity.CENTER);
        layout.setPadding(32, 32, 32, 32);
        layout.setBackgroundColor(Color.BLACK);

        ProgressBar progress = new ProgressBar(this);
        progress.setIndeterminate(true);
        layout.addView(progress, new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT));

        status = new TextView(this);
        status.setTextColor(Color.WHITE);
        status.setTextSize(18);
        status.setGravity(Gravity.CENTER);
        status.setText("Preparing game files…");
        LinearLayout.LayoutParams textParams = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        textParams.topMargin = 24;
        layout.addView(status, textParams);
        setContentView(layout);
    }

    private void prepareGameData() {
        status.setText("Installing game files. Keep the app open…");
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    installIfNeeded();
                    runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            Intent game = new Intent();
                            game.setClassName(BundledDataActivity.this,
                                    getPackageName() + ".Nova");
                            startActivity(game);
                            finish();
                        }
                    });
                } catch (final Exception error) {
                    runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            showError("Could not install game files: " + error.getMessage());
                        }
                    });
                }
            }
        }, "nova-data-install").start();
    }

    private void installIfNeeded() throws IOException {
        File external = Environment.getExternalStorageDirectory();
        File parent = new File(external, "gameloft/games");
        File target = new File(parent, "nova");
        File marker = new File(target, ".bundled-data-1.1.5");
        if (marker.isFile() && new File(target, "entities.pack").isFile()) {
            return;
        }

        if (!parent.isDirectory() && !parent.mkdirs()) {
            throw new IOException("Cannot create " + parent);
        }
        File staging = new File(parent, "nova.bundled-staging");
        deleteRecursively(staging);
        if (!staging.mkdirs()) {
            throw new IOException("Cannot create staging directory");
        }

        try {
            extractTo(staging);
            if (!new File(staging, "entities.pack").isFile()) {
                throw new IOException("The bundled archive does not contain entities.pack");
            }
            if (!target.isDirectory() && !target.mkdirs()) {
                throw new IOException("Cannot create game data directory");
            }
            mergeDirectory(staging, target);

            FileOutputStream markerOut = new FileOutputStream(marker);
            try {
                markerOut.write("1.1.5".getBytes("UTF-8"));
            } finally {
                markerOut.close();
            }
        } finally {
            deleteRecursively(staging);
        }
    }

    private void mergeDirectory(File source, File destination) throws IOException {
        File[] entries = source.listFiles();
        if (entries == null) {
            throw new IOException("Cannot read staged game files");
        }
        for (File entry : entries) {
            File output = new File(destination, entry.getName());
            if (entry.isDirectory()) {
                if (!output.isDirectory() && !output.mkdirs()) {
                    throw new IOException("Cannot create " + output);
                }
                mergeDirectory(entry, output);
            } else {
                InputStream in = new BufferedInputStream(new FileInputStream(entry));
                BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(output));
                try {
                    byte[] buffer = new byte[64 * 1024];
                    int count;
                    while ((count = in.read(buffer)) != -1) {
                        out.write(buffer, 0, count);
                    }
                } finally {
                    try {
                        in.close();
                    } finally {
                        out.close();
                    }
                }
            }
        }
    }

    private void extractTo(File staging) throws IOException {
        InputStream raw = getAssets().open("nova-game-data.zip");
        ZipInputStream zip = new ZipInputStream(new BufferedInputStream(raw));
        byte[] buffer = new byte[64 * 1024];
        String root = staging.getCanonicalPath() + File.separator;
        boolean foundEntry = false;
        try {
            ZipEntry entry;
            while ((entry = zip.getNextEntry()) != null) {
                String name = entry.getName();
                if (name.startsWith(DATA_PREFIX)) {
                    String relative = name.substring(DATA_PREFIX.length());
                    if (relative.length() > 0) {
                        File output = new File(staging, relative);
                        String canonical = output.getCanonicalPath();
                        if (!canonical.startsWith(root)) {
                            throw new IOException("Unsafe path in game archive");
                        }
                        if (entry.isDirectory()) {
                            if (!output.isDirectory() && !output.mkdirs()) {
                                throw new IOException("Cannot create " + relative);
                            }
                        } else {
                            File directory = output.getParentFile();
                            if (!directory.isDirectory() && !directory.mkdirs()) {
                                throw new IOException("Cannot create " + directory);
                            }
                            BufferedOutputStream out = new BufferedOutputStream(
                                    new FileOutputStream(output));
                            try {
                                int count;
                                while ((count = zip.read(buffer)) != -1) {
                                    out.write(buffer, 0, count);
                                }
                            } finally {
                                out.close();
                            }
                            foundEntry = true;
                        }
                    }
                }
                zip.closeEntry();
            }
        } finally {
            zip.close();
        }
        if (!foundEntry) {
            throw new IOException("The archive has an unexpected folder layout");
        }
    }

    private void showError(String message) {
        status.setText(message + "\n\nClose and reopen the game to retry.");
    }

    private static void deleteRecursively(File file) {
        if (file.isDirectory()) {
            File[] children = file.listFiles();
            if (children != null) {
                for (File child : children) {
                    deleteRecursively(child);
                }
            }
        }
        if (file.exists()) {
            file.delete();
        }
    }
}
