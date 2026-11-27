.class public Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/JoinFiles;
.super Ljava/lang/Object;


# static fields
.field private static a:J

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/JoinFiles;->a:J

    const/4 v0, 0x0

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/JoinFiles;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static join(Ljava/lang/String;JI)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/JoinFiles;->join(Ljava/lang/String;Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;JI)V

    return-void
.end method

.method public static join(Ljava/lang/String;Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;JI)V
    .locals 14

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "joinedFile.zip"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [[B

    const/4 v3, 0x0

    const/high16 v4, 0x80000

    new-array v4, v4, [B

    aput-object v4, v2, v3

    :try_start_0
    sput-wide p2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/JoinFiles;->a:J

    sput p4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/JoinFiles;->b:I

    new-instance p2, Ljava/io/File;

    move-object/from16 v0, p2

    move-object v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->mkdirs()Z

    const/16 p3, 0x0

    if-lez p4, :cond_6

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    new-instance p3, Ljava/io/FileOutputStream;

    move-object/from16 v0, p3

    move-object v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 p1, p3

    :goto_1
    const/16 p3, 0x0

    :goto_2
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_5

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "section."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_1

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".\\\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v7, 0x0

    invoke-virtual {v6}, Ljava/io/DataInputStream;->available()I

    move-result v9

    int-to-long v9, v9

    :goto_4
    cmp-long v11, v7, v9

    if-gez v11, :cond_4

    sub-long v11, v9, v7

    long-to-int v11, v11

    const/high16 v12, 0x80000

    if-le v11, v12, :cond_2

    const/high16 v11, 0x80000

    :cond_2
    const/high16 v12, 0x80000

    if-ne v11, v12, :cond_3

    const/4 v12, 0x0

    aget-object v12, v2, v12

    invoke-virtual {v6, v12}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v12, 0x0

    aget-object v12, v2, v12

    invoke-virtual {p1, v12}, Ljava/io/FileOutputStream;->write([B)V

    :goto_5
    int-to-long v11, v11

    add-long/2addr v7, v11

    goto :goto_4

    :cond_3
    const/4 v12, 0x1

    new-array v13, v11, [B

    aput-object v13, v2, v12

    const/4 v12, 0x1

    aget-object v12, v2, v12

    invoke-virtual {v6, v12}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v12, 0x1

    aget-object v12, v2, v12

    invoke-virtual {p1, v12}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_4
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :cond_6
    move-object/from16 p1, p3

    goto/16 :goto_1
.end method
