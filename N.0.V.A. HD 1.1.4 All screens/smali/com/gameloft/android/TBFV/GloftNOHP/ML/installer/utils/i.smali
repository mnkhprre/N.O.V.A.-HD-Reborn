.class public final Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:J

.field b:Z

.field c:Z

.field private d:Ljava/io/FileOutputStream;

.field private e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

.field private f:Ljava/io/DataInputStream;

.field private g:Ljava/io/InputStream;

.field private h:[[B

.field private i:I

.field private j:I

.field private k:J

.field private l:I

.field private m:J

.field private n:J

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJIJJ)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->d:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->h:[[B

    iput-wide v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->a:J

    iput v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->i:I

    iput v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->j:I

    iput-wide v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->k:J

    iput v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->l:I

    iput-wide v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->m:J

    iput-wide v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->n:J

    iput-wide v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->o:J

    iput-boolean v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->b:Z

    iput-boolean v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->c:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->r:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->s:I

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->p:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->q:Ljava/lang/String;

    iput p3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->j:I

    iput-wide p4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->k:J

    iput p6, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->l:I

    iput-wide p7, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->o:J

    iput-wide p9, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->n:J

    iput-boolean v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->b:Z

    iput-boolean v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->c:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "section."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->j:I

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->l:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->d:Ljava/io/FileOutputStream;

    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->i:I

    iget-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->o:J

    int-to-long v2, v4

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->n:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    :goto_1
    iput-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->m:J

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->j:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->o:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->b:Z

    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->h:[[B

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->h:[[B

    const/4 v1, 0x0

    const/high16 v2, 0x20000

    new-array v2, v2, [B

    aput-object v2, v0, v1

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->b:Z

    if-eqz v0, :cond_7

    :cond_0
    :goto_3
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->l:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-direct {v3, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->d:Ljava/io/FileOutputStream;

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->j:I

    long-to-int v3, v1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->j:I

    move-wide v0, v1

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->n:J

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    invoke-direct {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    const/4 v0, 0x0

    move v1, v0

    :cond_4
    :goto_4
    const/4 v0, 0x3

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->g:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_5

    :try_start_1
    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->p:Ljava/lang/String;

    iget v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->j:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->k:J

    iget-wide v7, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->m:J

    const-string v9, " "

    const-string v10, "%20"

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a:Ljava/net/HttpURLConnection;

    iget-object v0, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a:Ljava/net/HttpURLConnection;

    const v9, 0xea60

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a:Ljava/net/HttpURLConnection;

    const v9, 0x2bf20

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a:Ljava/net/HttpURLConnection;

    const-string v9, "Range"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bytes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-long v11, v5, v3

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-long/2addr v3, v5

    add-long/2addr v3, v7

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->g:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    :try_start_2
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->g:Ljava/io/InputStream;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v2, 0xbb8

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->g:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->h:[[B

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    goto/16 :goto_3

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->g:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->g:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->f:Ljava/io/DataInputStream;

    goto/16 :goto_2

    :cond_6
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_7
    :goto_7
    iget-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->a:J

    iget-wide v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->m:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->d:Z

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_7

    :cond_8
    iget-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->m:J

    iget-wide v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x20000

    cmp-long v2, v0, v2

    if-lez v2, :cond_a

    const/high16 v0, 0x20000

    :goto_8
    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->i:I

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->i:I

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->h:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->h:[[B

    const/4 v1, 0x1

    iget v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->i:I

    new-array v2, v2, [B

    aput-object v2, v0, v1

    :cond_9
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->f:Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->h:[[B

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->d:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->h:[[B

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    :goto_9
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    iget-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->a:J

    iget v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->i:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->a:J

    goto :goto_7

    :cond_a
    long-to-int v0, v0

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->f:Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->h:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->d:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->h:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_9

    :cond_c
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->f:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->g:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->h:[[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->b:Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_6
.end method
