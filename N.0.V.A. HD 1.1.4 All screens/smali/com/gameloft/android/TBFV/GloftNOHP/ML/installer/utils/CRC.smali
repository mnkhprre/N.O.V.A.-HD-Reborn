.class public Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/CRC;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcChecksum(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x80

    :try_start_1
    new-array v1, v1, [B

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->close()V

    move-wide v0, v1

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-wide v0, v3

    goto :goto_0
.end method

.method public static isValidChecksum(Ljava/lang/String;J)Z
    .locals 3

    invoke-static {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/CRC;->calcChecksum(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
