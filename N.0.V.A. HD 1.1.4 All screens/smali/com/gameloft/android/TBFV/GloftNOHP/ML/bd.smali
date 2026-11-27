.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;


# direct methods
.method constructor <init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bd;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bd;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bd;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bd;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bd;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;

    invoke-static {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    add-int/lit16 v1, v1, 0x3a98

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_0
    return-void
.end method
