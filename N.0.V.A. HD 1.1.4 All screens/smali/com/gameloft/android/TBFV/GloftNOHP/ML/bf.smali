.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private synthetic a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;


# direct methods
.method constructor <init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bf;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bf;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;

    invoke-static {v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->access$100(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string v0, "MyVideoView"

    const-string v1, "****************onCompletion()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->i:Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bf;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;

    const-class v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bf;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bf;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->finish()V

    return-void
.end method
