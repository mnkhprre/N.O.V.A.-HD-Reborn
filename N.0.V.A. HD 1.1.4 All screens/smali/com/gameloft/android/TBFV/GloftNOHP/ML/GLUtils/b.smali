.class public final Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;->e:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;->a:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;->b:Ljava/lang/String;

    iput v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;->c:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;->a:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;->c:I

    return v0
.end method
