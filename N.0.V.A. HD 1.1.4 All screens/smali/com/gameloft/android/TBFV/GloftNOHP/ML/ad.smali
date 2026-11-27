.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->d:Landroid/media/SoundPool;

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;->b:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;->c:I

    return-void
.end method
