.class public final Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Landroid/content/res/Resources;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;->a:Ljava/util/Vector;

    iput-wide v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;->c:J

    iput-wide v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;->d:J

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;->a:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;->b:Landroid/content/res/Resources;

    return-void
.end method

.method private a(Ljava/io/DataInputStream;)V
    .locals 12

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const/4 v3, 0x0

    move v11, v3

    move-object v3, v0

    move v0, v11

    :goto_1
    if-ge v0, v2, :cond_1

    new-instance v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;

    invoke-direct {v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;-><init>()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->c(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->a(I)V

    invoke-virtual {v3, v6, v7}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->a(J)V

    invoke-virtual {v3, v9}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->b(I)V

    invoke-virtual {v3, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->c(I)V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;->a:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    int-to-long v4, v9

    iget-wide v6, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;->d:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    int-to-long v4, v9

    iput-wide v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;->d:J

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->g()I

    move-result v0

    invoke-virtual {v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->f()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;->c:J

    return-void

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/Vector;
    .locals 2

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;->a(Ljava/io/DataInputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;->a:Ljava/util/Vector;

    return-object v0
.end method
