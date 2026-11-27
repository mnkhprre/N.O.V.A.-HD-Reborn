.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:J

.field d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->d:I

    return-void
.end method

.method public static pause()V
    .locals 0

    return-void
.end method

.method public static resume()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->f:Landroid/media/SoundPool;

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->b:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->d:I

    return-void
.end method

.method public final a(F)V
    .locals 2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->f:Landroid/media/SoundPool;

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->b:I

    invoke-virtual {v0, v1, p1}, Landroid/media/SoundPool;->setRate(IF)V

    return-void
.end method
