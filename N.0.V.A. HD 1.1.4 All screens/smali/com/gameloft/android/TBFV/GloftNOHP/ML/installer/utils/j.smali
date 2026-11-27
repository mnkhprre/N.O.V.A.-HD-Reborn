.class public final Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;
.super Ljava/lang/Object;


# static fields
.field public static d:Z


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:J

.field private i:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;

.field private j:Ljava/util/Vector;

.field private k:I

.field private l:I

.field private final m:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->f:Ljava/lang/String;

    iput-wide v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->g:J

    iput-wide v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->h:J

    iput v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->a:I

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->i:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;

    iput v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->k:I

    iput v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->l:I

    const/high16 v0, 0x100000

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->m:I

    iput-object p3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->j:Ljava/util/Vector;

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->f:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->c:Z

    goto :goto_0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->j:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->j:Ljava/util/Vector;

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->k:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->e()V

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->b:Z

    sput-boolean v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->d:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method private e()V
    .locals 9

    const-wide/32 v7, 0x100000

    const-wide/16 v5, 0x1

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->j:Ljava/util/Vector;

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->k:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->f()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->g:J

    iget-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->g:J

    cmp-long v0, v0, v7

    if-gtz v0, :cond_1

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->l:I

    iget-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->g:J

    iput-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->h:J

    :cond_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->g:J

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->h:J

    const/16 v0, 0x8

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->l:I

    :goto_0
    iget-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->h:J

    cmp-long v0, v0, v7

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->g:J

    iget v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->l:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->l:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->h:J

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 14

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->c:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->j:Ljava/util/Vector;

    iget v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->k:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;

    move-object v12, v0

    move v7, v3

    move v4, v3

    :goto_1
    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->l:I

    if-ge v7, v1, :cond_0

    iget-object v13, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->i:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->f:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->g()I

    move-result v5

    iget v6, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->a:I

    add-int/2addr v5, v6

    int-to-long v5, v5

    iget-wide v8, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->g:J

    iget-wide v10, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->h:J

    invoke-direct/range {v1 .. v11}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;-><init>(Ljava/lang/String;Ljava/lang/String;IJIJJ)V

    aput-object v1, v13, v7

    int-to-long v1, v4

    iget-wide v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->h:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v4, v1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->c:Z

    goto :goto_0
.end method

.method public final a(Ljava/util/Vector;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->j:Ljava/util/Vector;

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->c:Z

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->k:I

    :try_start_0
    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->c:Z

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    move v0, v3

    :goto_0
    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->l:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->i:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;

    aget-object v1, v1, v0

    iget-boolean v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->b:Z

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->c:Z

    if-eqz v1, :cond_1

    move v1, v5

    :goto_1
    if-eqz v1, :cond_2

    iput-boolean v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->c:Z

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->i:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->b:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->j:Ljava/util/Vector;

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->k:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->f:Ljava/lang/String;

    iget-wide v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->g:J

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->l:I

    invoke-static {v1, v0, v2, v3, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/JoinFiles;->join(Ljava/lang/String;Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;JI)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/ZipFile;->unZip(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-boolean v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->c:Z

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->k:I

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->j:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_5

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->e()V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->a()V

    goto :goto_2

    :cond_5
    iput-boolean v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->b:Z

    goto :goto_2
.end method

.method public final c()J
    .locals 9

    const/4 v6, 0x0

    const-wide/16 v0, 0x0

    move-wide v2, v0

    move v1, v6

    :goto_0
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->k:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->f()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v6

    move-wide v7, v2

    move-wide v1, v7

    :goto_1
    iget v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->l:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->i:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;

    aget-object v3, v3, v0

    iget-wide v3, v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/i;->a:J

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-wide v1
.end method
