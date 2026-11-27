.class public Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static a:I

.field public static b:I

.field public static c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;

.field private static d:Z

.field private static e:Ljava/lang/String;

.field private static f:Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;

.field private static j:Landroid/net/ConnectivityManager;

.field private static k:Landroid/net/NetworkInfo;

.field private static m:[[Ljava/lang/String;

.field private static n:I

.field private static o:I

.field private static r:[I


# instance fields
.field private g:Landroid/hardware/SensorManager;

.field private h:Landroid/hardware/Sensor;

.field private i:Landroid/hardware/Sensor;

.field private l:Landroid/telephony/TelephonyManager;

.field private p:F

.field private q:[[F

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private fireDown:Z

.field private hatX:I

.field private hatY:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->e:Ljava/lang/String;

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->j:Landroid/net/ConnectivityManager;

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->k:Landroid/net/NetworkInfo;

    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "eng"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "fra"

    aput-object v2, v1, v4

    const-string v2, "fre"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "deu"

    aput-object v2, v1, v4

    const-string v2, "ger"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "esl"

    aput-object v3, v2, v4

    const-string v3, "spa"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ita"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jpn"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "por"

    aput-object v3, v2, v4

    const-string v3, "BRA"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "por"

    aput-object v3, v2, v4

    const-string v3, "PRT"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->m:[[Ljava/lang/String;

    const-string v0, "nova"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "StormGLOFT"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sput v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->n:I

    sput v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->o:I

    const/16 v0, 0x64

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->r:[I

    return-void

    :array_0
    .array-data 4
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->q:[[F

    return-void
.end method

.method public static Exit()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->f:Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static NotifyTrophy(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->readFromFile()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->r:[I

    aput p0, v0, p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/gameloft/games/Nova"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "androidTrophy.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "androidTrophy.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move v0, v4

    :goto_1
    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->r:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->r:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->append(C)Ljava/io/Writer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WRITE ERROR........................."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static OpenBrowser(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static OpenGLive(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaRenderer;->a:Landroid/content/Context;

    const-class v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "language"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "gginame"

    const-string v2, "24003"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaRenderer;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static OpenIGP(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaRenderer;->a:Landroid/content/Context;

    const-class v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "language"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "Game_Code"

    const-string v2, "NOHP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaRenderer;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static getHostName()[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static getLanguage$16da0604(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    move v1, v3

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->m:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_2
.end method

.method public static initialize_Trophy([I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    const/16 v1, 0x7f

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isWifiAvailable()Z
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->j:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->j:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->k:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->k:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeAccelerometer(FFF)V
.end method

.method private native nativeCanInterrupt()I
.end method

.method private native nativeEnd()V
.end method

.method public static native nativeInit()V
.end method

.method private native nativeOrientation(FFF)V
.end method

.method private static native nativeSetOnKeyDown(I)V
.end method

.method private static native nativeSetOnKeyUp(I)V
.end method

.method private native nativeTouchMoved(III)V
.end method

.method private native nativeTouchPressed(III)V
.end method

.method private native nativeTouchReleased(III)V
.end method

.method public static readFromFile()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/gameloft/games/Nova"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "androidTrophy.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "androidTrophy.dat"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->r:[I

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->initialize_Trophy([I)V

    move v0, v2

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->ready()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->r:[I

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ ERROR........................."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static sendAppToBackground()V
    .locals 2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->moveTaskToBack(Z)Z

    return-void
.end method

.method public static sendUnlockMessage()V
    .locals 0

    return-void
.end method


# virtual methods
.method public native nativeTrackBall(IFFII)V
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-static/range {p0 .. p0}, Lcom/savegame/SavesRestoringPortable;->DoSmth(Landroid/content/Context;)V

    const/16 v2, 0x480

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->setVolumeControlStream(I)V

    invoke-virtual {p0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->a:I

    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;

    invoke-direct {v0, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->f:Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->f:Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->setContentView(Landroid/view/View;)V

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Installeree...............111111111111111111111111111111111111111111"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Installeree...............111111111111111111111111111111111111111111"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Installeree...............111111111111111111111111111111111111111111"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Installeree...............111111111111111111111111111111111111111111"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".installer.GameInstaller"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->l:Landroid/telephony/TelephonyManager;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    invoke-static {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->getLanguage$16da0604(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->b:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "language........................................................."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput-object p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    sput-object p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->j:Landroid/net/ConnectivityManager;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeSetOnKeyDown(I)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->dispatchControllerButton(IZ)V

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->dispatchControllerButton(IZ)V

    const/16 v2, 0x19

    const/16 v1, 0x18

    const/4 v0, 0x1

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    sput-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->d:Z

    sput-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->a:Z

    :cond_1
    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    sput p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->o:I

    goto :goto_0
.end method

.method private dispatchControllerButton(IZ)V
    .locals 1

    # R2 (KEYCODE_BUTTON_R2) goes through setFireState so that a controller
    # reporting R2 as both a key and an analog axis fires only once.
    const/16 v0, 0x69

    if-ne p1, v0, :not_fire

    invoke-direct {p0, p2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->setFireState(Z)V

    return-void

    :not_fire
    invoke-direct {p0, p1, p2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->dispatchControllerButtonRaw(IZ)V

    return-void
.end method

.method private setFireState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->fireDown:Z

    if-eq v0, p1, :fire_unchanged

    iput-boolean p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->fireDown:Z

    const/16 v0, 0x69

    invoke-direct {p0, v0, p1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->dispatchControllerButtonRaw(IZ)V

    :fire_unchanged
    return-void
.end method

# Analog triggers: max(AXIS_RTRIGGER, AXIS_GAS). Press above 0.5, release
# below 0.3 so a half-held trigger does not flicker.
# D-pad reported as HAT axes (e.g. Xbox controllers): turn direction
# changes into DPAD key down/up events through onKeyDown/onKeyUp.
.method private handleHatAxes(Landroid/view/MotionEvent;)V
    .locals 4

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->hatDirection(F)I

    move-result v0

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->hatX:I

    const/16 v2, 0x15

    const/16 v3, 0x16

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->applyHat(IIII)V

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->hatX:I

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->hatDirection(F)I

    move-result v0

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->hatY:I

    const/16 v2, 0x13

    const/16 v3, 0x14

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->applyHat(IIII)V

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->hatY:I

    return-void
.end method

# -1 below -0.5, 1 above 0.5, otherwise 0.
.method private static hatDirection(F)I
    .locals 2

    const/high16 v0, 0x3f000000

    cmpl-float v1, p0, v0

    if-lez v1, :hat_positive

    const/high16 v0, -0x41000000

    cmpg-float v1, p0, v0

    if-gez v1, :hat_zero

    const/4 v0, -0x1

    return v0

    :hat_positive
    const/4 v0, 0x1

    return v0

    :hat_zero
    const/4 v0, 0x0

    return v0
.end method

# p1 = old direction, p2 = new direction, p3 = key for -1, p4 = key for +1
.method private applyHat(IIII)V
    .locals 2

    if-eq p1, p2, :apply_done

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :old_not_negative

    invoke-virtual {p0, p3, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :old_not_negative
    const/4 v0, 0x1

    if-ne p1, v0, :old_not_positive

    invoke-virtual {p0, p4, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :old_not_positive
    const/4 v0, -0x1

    if-ne p2, v0, :new_not_negative

    invoke-virtual {p0, p3, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :new_not_negative
    const/4 v0, 0x1

    if-ne p2, v0, :apply_done

    invoke-virtual {p0, p4, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :apply_done
    return-void
.end method

.method private handleTriggerAxes(Landroid/view/MotionEvent;)V
    .locals 3

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0x16

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-boolean v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->fireDown:Z

    if-nez v1, :trigger_held

    const/high16 v2, 0x3f000000

    cmpl-float v1, v0, v2

    if-lez v1, :trigger_done

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->setFireState(Z)V

    goto :trigger_done

    :trigger_held
    const v2, 0x3e99999a

    cmpg-float v1, v0, v2

    if-gez v1, :trigger_done

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->setFireState(Z)V

    :trigger_done
    return-void
.end method

.method private dispatchControllerButtonRaw(IZ)V
    .locals 8

    const/16 v0, 0x60

    if-eq p1, v0, :button_jump

    const/16 v0, 0x67

    if-eq p1, v0, :button_reload

    const/16 v0, 0x69

    if-eq p1, v0, :button_fire

    const/16 v0, 0x61

    if-eq p1, v0, :button_jump

    const/16 v0, 0x63

    if-eq p1, v0, :button_ability

    const/16 v0, 0x64

    if-eq p1, v0, :button_weapon_next

    const/16 v0, 0x66

    if-eq p1, v0, :button_weapon_previous

    const/16 v0, 0x6c

    if-eq p1, v0, :button_pause

    return-void

    :button_fire
    const/4 v0, 0x2

    const v1, 0x3f666666

    const v2, 0x3f2e147b

    goto :button_dispatch

    :button_jump
    const/4 v0, 0x3

    const v1, 0x3f733333

    const v2, 0x3f4ccccd

    goto :button_dispatch

    :button_reload
    const/16 v0, 0x8

    const v1, 0x3f5eb852

    const v2, 0x3e051eb8

    goto :button_dispatch

    :button_ability
    const/4 v0, 0x4

    const v1, 0x3f51eb85

    const v2, 0x3f68f5c3

    goto :button_dispatch

    :button_weapon_next
    const/4 v0, 0x5

    const v1, 0x3f7ae148

    const v2, 0x3e051eb8

    goto :button_dispatch

    :button_weapon_previous
    const/4 v0, 0x6

    const v1, 0x3f428f5c

    const v2, 0x3e051eb8

    goto :button_dispatch

    :button_pause
    const/4 v0, 0x7

    const v1, 0x3d851eb8

    const v2, 0x3db851ec

    :button_dispatch
    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v4, v4

    float-to-int v3, v3

    if-eqz p2, :button_release

    invoke-direct {p0, v4, v3, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeTouchPressed(III)V

    return-void

    :button_release
    invoke-direct {p0, v4, v3, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeTouchReleased(III)V

    return-void
.end method

.method protected onPause()V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ON PAUSE&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&     P Heap Total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,Alloc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,Free="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "Nova"

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->MEMORY_STATS(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeCanInterrupt()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->f:Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->ResumeMovie()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v2, 0x1

    const-string v0, "Nova"

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->MEMORY_STATS(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->g:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->g:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->h:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->g:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->i:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->g:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->h:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->g:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->i:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ON RESUME   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&    P Heap Total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,Alloc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,Free="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x3fcccccd    # 1.6f

    const/4 v6, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v0, v0

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->p:F

    sub-float/2addr v0, v1

    const v1, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-float/2addr v1, v0

    div-float/2addr v1, v7

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->q:[[F

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    mul-float/2addr v2, v0

    div-float/2addr v2, v7

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->q:[[F

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    sub-float/2addr v2, v3

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v3, v3

    iput v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->p:F

    const v3, 0x3a102de0    # 5.5E-4f

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_0

    const v3, 0x3a102de0    # 5.5E-4f

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_0

    const v3, -0x45efd220    # -5.5E-4f

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_0

    const v1, -0x45efd220    # -5.5E-4f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->q:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float/2addr v3, v0

    div-float/2addr v3, v7

    aput v3, v1, v2

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->q:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v3, v0

    div-float/2addr v3, v7

    aput v3, v1, v2

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->q:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float/2addr v3, v0

    div-float/2addr v3, v7

    aput v3, v1, v2

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->p:F

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->q:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->q:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    mul-float/2addr v4, v0

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->q:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->q:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v4, v0

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->q:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->q:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    mul-float/2addr v0, v4

    div-float/2addr v0, v7

    add-float/2addr v0, v3

    aput v0, v1, v2

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->q:[[F

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget v0, v0, v1

    add-float/2addr v0, v8

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->q:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    add-float/2addr v1, v8

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->q:[[F

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v2, v2, v3

    add-float/2addr v2, v8

    neg-float v0, v0

    mul-float/2addr v2, v8

    invoke-direct {p0, v0, v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeOrientation(FFF)V

    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v6, :cond_3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeAccelerometer(FFF)V

    :cond_3
    monitor-exit p0

    :goto_0
    return-void

    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const-string v0, "Nova"

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->MEMORY_STATS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->g:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->g:Landroid/hardware/SensorManager;

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const v3, 0xff00

    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    if-nez v0, :cond_0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeTouchPressed(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    :try_start_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v4, v5, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeTouchPressed(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move v4, v8

    :goto_2
    if-ge v4, v2, :cond_2

    :try_start_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v6, v7, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeTouchMoved(III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "11111111111111111111111111111111111111111111111111111111111111111  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2222222222222222222222222222222222222222222222222222222222  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v2

    :cond_2
    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    :try_start_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeTouchReleased(III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    if-ne v0, v9, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x9

    :try_start_4
    invoke-direct {p0, v0, v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeTouchReleased(III)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_4
    return v9

    :catch_3
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "444444444444444444444444444444444444444444444444444444444444444 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_4
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const v0, 0x1000010

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :generic_super

    invoke-direct {p0, p1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->handleTriggerAxes(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->handleHatAxes(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const v9, 0x3e4ccccd

    cmpl-float v8, v8, v9

    if-lez v8, :generic_move_neutral

    int-to-float v8, v6

    const v9, 0x3e051eb8

    mul-float/2addr v8, v9

    int-to-float v9, v7

    const v10, 0x3f2e147b

    mul-float/2addr v9, v10

    int-to-float v10, v6

    const v11, 0x3d75c28f

    mul-float/2addr v10, v11

    mul-float/2addr v10, v1

    add-float/2addr v8, v10

    int-to-float v10, v7

    const v11, 0x3dcccccd

    mul-float/2addr v10, v11

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    float-to-int v8, v8

    float-to-int v9, v9

    iget-boolean v10, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->u:Z

    if-eqz v10, :generic_move_start

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeTouchMoved(III)V

    goto :generic_right_stick

    :generic_move_start
    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeTouchPressed(III)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->u:Z

    goto :generic_right_stick

    :generic_move_neutral
    iget-boolean v8, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->u:Z

    if-eqz v8, :generic_right_stick

    int-to-float v8, v6

    const v9, 0x3e051eb8

    mul-float/2addr v8, v9

    int-to-float v9, v7

    const v10, 0x3f2e147b

    mul-float/2addr v9, v10

    float-to-int v8, v8

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeTouchReleased(III)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->u:Z

    :generic_right_stick
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const v9, 0x3df5c28f

    cmpl-float v8, v8, v9

    if-lez v8, :generic_right_neutral

    iget-boolean v8, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->v:Z

    if-eqz v8, :generic_right_start

    goto :generic_right_move

    :generic_right_start
    int-to-float v8, v6

    const v9, 0x3f266666

    mul-float/2addr v8, v9

    int-to-float v9, v7

    const v10, 0x3f000000

    mul-float/2addr v9, v10

    float-to-int v8, v8

    float-to-int v9, v9

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeTouchPressed(III)V

    iput v8, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->w:I

    iput v9, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->x:I

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->v:Z

    :generic_right_move
    iget v8, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->w:I

    iget v9, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->x:I

    int-to-float v10, v6

    const v11, 0x3b449ba6

    mul-float/2addr v10, v11

    mul-float/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v8, v10

    int-to-float v10, v7

    const v11, 0x3b449ba6

    mul-float/2addr v10, v11

    mul-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeTouchMoved(III)V

    iput v8, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->w:I

    iput v9, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->x:I

    goto :generic_consumed

    :generic_right_neutral
    iget-boolean v8, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->v:Z

    if-eqz v8, :generic_consumed

    iget v8, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->w:I

    iget v9, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->x:I

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeTouchReleased(III)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->v:Z

    :generic_consumed
    const/4 v0, 0x1

    return v0

    :generic_super
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    long-to-int v5, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->nativeTrackBall(IFFII)V

    const/4 v0, 0x1

    return v0
.end method
