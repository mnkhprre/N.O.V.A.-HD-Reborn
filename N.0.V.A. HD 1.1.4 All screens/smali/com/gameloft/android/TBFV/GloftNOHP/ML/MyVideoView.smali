.class public Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;
.super Landroid/app/Activity;


# static fields
.field private static k:Z

.field private static l:I

.field private static m:I


# instance fields
.field a:Landroid/media/AudioManager;

.field private b:Landroid/widget/VideoView;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/ImageButton;

.field private i:Ljava/lang/String;

.field private j:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->k:Z

    sput v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->l:I

    sput v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->m:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->j:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->n:I

    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)I
    .locals 1

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->n:I

    return v0
.end method

.method private b()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x3

    const/4 v2, 0x1

    sput-boolean v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->i:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**************playVideo *****************"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->a:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->n:I

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " VEDIOOOOOOOO  STARTEDDDDDDDDDDDDDDDDDDDDDDDDDDD "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b:Landroid/widget/VideoView;

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bf;

    invoke-direct {v1, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bf;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MyVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->a:Landroid/media/AudioManager;

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->n:I

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v1, 0x480

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->requestWindowFeature(I)Z

    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->setContentView(I)V

    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->c:Landroid/widget/ImageButton;

    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->d:Landroid/widget/ImageButton;

    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->e:Landroid/widget/ImageButton;

    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->f:Landroid/widget/ImageButton;

    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->g:Landroid/widget/ImageButton;

    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->h:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->i:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " CREATINGGGGGGGGGGGGGGGGG  ACTIVITYYYYYYYYYYYYYYYYYYYYYYYY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b()V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ba;

    invoke-direct {v1, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ba;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->d:Landroid/widget/ImageButton;

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/az;

    invoke-direct {v1, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/az;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->e:Landroid/widget/ImageButton;

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/be;

    invoke-direct {v1, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/be;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->f:Landroid/widget/ImageButton;

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bd;

    invoke-direct {v1, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bd;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bc;

    invoke-direct {v1, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bc;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->h:Landroid/widget/ImageButton;

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bb;

    invoke-direct {v1, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/bb;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "hEererere"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->j:I

    if-le v0, v1, :cond_0

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->k:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->k:Z

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b()V

    sput-boolean v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->k:Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    :cond_2
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->n:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method
