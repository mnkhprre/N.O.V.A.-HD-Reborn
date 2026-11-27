.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->h:I

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->nativeSetStopOnMusic(I)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->h:I

    aget-object v0, v0, v1

    const/16 v1, 0x9

    iput v1, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    return-void
.end method
