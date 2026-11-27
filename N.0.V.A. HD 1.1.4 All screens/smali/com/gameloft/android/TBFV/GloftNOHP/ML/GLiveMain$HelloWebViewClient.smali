.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private synthetic b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;


# direct methods
.method synthetic constructor <init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;B)V

    return-void
.end method

.method private constructor <init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;B)V
    .locals 1

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    return-void
.end method

.method private static CheckValidity(Ljava/lang/String;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-boolean v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/leaderboards/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "http://livewebapp.gameloft.com/glive/leaderboards"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_0
    :goto_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/leaderboards/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->P:Z

    if-eqz v0, :cond_1

    sput-boolean v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_1
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/ranking/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "http://livewebapp.gameloft.com/glive/ranking/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_2
    :goto_1
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/ranking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->P:Z

    if-eqz v0, :cond_3

    sput-boolean v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fb_send/yes/fb_q/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fb_send/yes/fb_in/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/inv/fb_q/1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/src/fb_q/1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fb_send/yes/fb_q/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fb_send/yes/fb_in/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/inv/fb_q/1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/src/fb_q/1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    :cond_7
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    :cond_8
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "facebook.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_9

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "twitter.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_9

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/account/twitter-login?done"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_a

    :cond_9
    sput-object p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_a
    const-string v0, "http://livewebapp.gameloft.com/glive/account/index/uid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_b

    const-string v0, "Delete="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_b

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_b
    const-string v0, "http://livewebapp.gameloft.com/glive/friends/?iDelete="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_c

    const-string v0, "http://livewebapp.gameloft.com/glive/friends?iDelete="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_e

    :cond_c
    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    :cond_d
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    :cond_e
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/login/recover-password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_f
    const-string v0, "http://livewebapp.gameloft.com/glive/account/username"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "http://livewebapp.gameloft.com/glive/account/password"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "http://livewebapp.gameloft.com/glive/account/email"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_11
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/account/avatar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "http://livewebapp.gameloft.com/glive/account/edit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->P:Z

    if-nez v0, :cond_12

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    :cond_12
    const-string v0, "http://livewebapp.gameloft.com/glive/friends?select=yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/index/select/yes?user_name="

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "http://livewebapp.gameloft.com/glive/signal-back"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "http://livewebapp.gameloft.com/glive/messages/sent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_14
    const-string v0, "http://livewebapp.gameloft.com/glive/friends/show-invite-email"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_15
    const-string v0, "http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_16
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://wapshop.gameloft.com/wifi/hdplus_full_shop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_17
    return-void

    :cond_18
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/leaderboards"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    goto/16 :goto_0

    :cond_19
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/ranking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-object p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    goto/16 :goto_1
.end method

.method private static ReSetStack(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->C:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://livewebapp.gameloft.com/glive/messages/index"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://livewebapp.gameloft.com/glive/friends"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://livewebapp.gameloft.com/glive/games"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    :goto_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    sput-object p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v0, "GLIVE"

    const-string v1, "pageDepth = 0;    Inc_PageDepth = 0;"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10

    const/16 v9, 0x2d

    const/16 v8, 0x28

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const-string v0, "GLIVE"

    const-string v1, "***************onPageFinished***********"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GLIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***************URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " *********"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->ReSetStack(Ljava/lang/String;)V

    const-string v0, "facebook.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_2d

    move v0, v7

    :goto_0
    sput-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aN:Z

    const-string v0, "twitter.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_2e

    move v0, v7

    :goto_1
    sput-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aM:Z

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aN:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aM:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->updateWebView()V

    :cond_1
    const-string v0, "javascript:window.GLIVE.getUserID(sUserUid)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getInboxMessages(iInboxMessages)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getGamesMessages(iGamesMessages)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getFriendsMessages(iFriendsMessages)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getGameId(iGameId)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getSubject(sSubject)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.checkIsFriend(bIsFriend)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.showAddFriendOption(bShowAdd)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.showRateOption(bShowEvaluate)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getCurentUserUid(iUserId)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getCurentUserName(sUserName)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.showTitle(sTitle)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sput-boolean v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/leaderboards/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "http://livewebapp.gameloft.com/glive/leaderboards"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_2
    :goto_2
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/leaderboards/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->P:Z

    if-eqz v0, :cond_3

    sput-boolean v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_3
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/ranking/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "http://livewebapp.gameloft.com/glive/ranking/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    sput-boolean v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_4
    :goto_3
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/ranking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->P:Z

    if-eqz v0, :cond_5

    sput-boolean v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fb_send/yes/fb_q/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fb_send/yes/fb_in/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/inv/fb_q/1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/src/fb_q/1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fb_send/yes/fb_q/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://livewebapp.gameloft.com/glive/games/show-game/gid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fb_send/yes/fb_in/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/inv/fb_q/1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/add-friends/fb_new/src/fb_q/1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    :cond_9
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    :cond_a
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "facebook.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_b

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "twitter.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_b

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/account/twitter-login?done"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_c

    :cond_b
    sput-object p2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_c
    const-string v0, "http://livewebapp.gameloft.com/glive/account/index/uid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_d

    const-string v0, "Delete="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_d

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_d
    const-string v0, "http://livewebapp.gameloft.com/glive/friends/?iDelete="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_e

    const-string v0, "http://livewebapp.gameloft.com/glive/friends?iDelete="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_10

    :cond_e
    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    :cond_f
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    :cond_10
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/login/recover-password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_11
    const-string v0, "http://livewebapp.gameloft.com/glive/account/username"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "http://livewebapp.gameloft.com/glive/account/password"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "http://livewebapp.gameloft.com/glive/account/email"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_13
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/account/avatar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "http://livewebapp.gameloft.com/glive/account/edit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->P:Z

    if-nez v0, :cond_14

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    :cond_14
    const-string v0, "http://livewebapp.gameloft.com/glive/friends?select=yes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/index/select/yes?user_name="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "http://livewebapp.gameloft.com/glive/signal-back"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "http://livewebapp.gameloft.com/glive/messages/sent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_16
    const-string v0, "http://livewebapp.gameloft.com/glive/friends/show-invite-email"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_17
    const-string v0, "http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_18
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://wapshop.gameloft.com/wifi/hdplus_full_shop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    :cond_19
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->P:Z

    if-eqz v0, :cond_31

    sput-object p2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->P:Z

    :cond_1a
    :goto_4
    const-string v0, "http://livewebapp.gameloft.com/glive/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ab:Landroid/widget/ImageButton;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ac:Landroid/widget/ImageButton;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ad:Landroid/widget/ImageButton;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ae:Landroid/widget/ImageButton;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_1b
    const-string v0, "http://livewebapp.gameloft.com/glive/games/show-game/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_1c
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ao:Z

    if-nez v0, :cond_1d

    sput-boolean v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ao:Z

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->x:I

    const/16 v2, 0x32

    sub-int/2addr v1, v2

    const/16 v2, 0xe

    invoke-direct {v0, v9, v8, v1, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ag:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1d
    :goto_5
    const-string v0, "http://livewebapp.gameloft.com/glive/account/index/uid/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->as:Z

    if-nez v0, :cond_1e

    sput-boolean v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->as:Z

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->x:I

    const/16 v2, 0x32

    sub-int/2addr v1, v2

    const/16 v2, 0xe

    invoke-direct {v0, v9, v8, v1, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ak:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1e
    :goto_6
    const-string v0, "http://livewebapp.gameloft.com/glive/friends"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "http://livewebapp.gameloft.com/glive/friends?iDelete"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_1f

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/index/page"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_38

    :cond_1f
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ap:Z

    if-nez v0, :cond_20

    sput-boolean v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ap:Z

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->x:I

    const/16 v2, 0x32

    sub-int/2addr v1, v2

    const/16 v2, 0xe

    invoke-direct {v0, v9, v8, v1, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ah:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_20
    :goto_7
    const-string v0, "http://livewebapp.gameloft.com/glive/login/index"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "http://livewebapp.gameloft.com/glive/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->C:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "http://livewebapp.gameloft.com/glive/login"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "http://livewebapp.gameloft.com/glive/login?iDelete"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_21
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aq:Z

    if-nez v0, :cond_22

    sput-boolean v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aq:Z

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v1, 0x3e

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->x:I

    const/16 v3, 0x43

    sub-int/2addr v2, v3

    const/16 v3, 0xd

    invoke-direct {v0, v1, v8, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ai:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_22
    :goto_8
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->A:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3c

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->at:Z

    if-nez v0, :cond_23

    sput-boolean v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->at:Z

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v1, 0x7a

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->x:I

    const/16 v3, 0x7f

    sub-int/2addr v2, v3

    const/16 v3, 0xd

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->j:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_23
    :goto_9
    const-string v0, "http://livewebapp.gameloft.com/glive/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->C:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3e

    :cond_24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ar:Z

    if-nez v0, :cond_25

    sput-boolean v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ar:Z

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, 0x5

    const/16 v2, 0xf

    invoke-direct {v0, v8, v8, v1, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aj:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_25
    const-string v0, "javascript:window.GLIVE.getUserName(strUserName)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getPassword(strPassword)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:window.GLIVE.getAutoLogin(blnRememberMe)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_a
    const-string v0, "http://livewebapp.gameloft.com/glive/friends/show-invite-email"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "www.facebook.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_27

    :cond_26
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->clearFocus()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->requestFocus()Z

    :cond_27
    const-string v0, "http://livewebapp.gameloft.com/glive/messages/index"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_40

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->an:Z

    if-nez v0, :cond_28

    sput-boolean v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->an:Z

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->x:I

    const/16 v2, 0x32

    sub-int/2addr v1, v2

    const/16 v2, 0xe

    invoke-direct {v0, v9, v8, v1, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->af:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_28
    :goto_b
    const-string v0, "http://livewebapp.gameloft.com/glive/messages/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "http://livewebapp.gameloft.com/glive/messages/show/mid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "http://livewebapp.gameloft.com/glive/messages/show-sent/mid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    :cond_29
    const-string v0, "http://livewebapp.gameloft.com/glive/logout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aO:Z

    const-string v0, "0"

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->K:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->C:Ljava/lang/String;

    const-string v1, "remember_me=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_2a

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->C:Ljava/lang/String;

    const-string v1, "remember_me=1"

    const-string v2, "remember_me="

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->C:Ljava/lang/String;

    :cond_2a
    const-string v0, "http://livewebapp.gameloft.com/glive/info/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "http://livewebapp.gameloft.com/glive/info"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_43

    :cond_2b
    sput-boolean v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aL:Z

    :goto_c
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2c

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    :cond_2c
    return-void

    :cond_2d
    move v0, v5

    goto/16 :goto_0

    :cond_2e
    move v0, v5

    goto/16 :goto_1

    :cond_2f
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/leaderboards"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-object p2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    goto/16 :goto_2

    :cond_30
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, "http://livewebapp.gameloft.com/glive/ranking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-object p2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    goto/16 :goto_3

    :cond_31
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Q:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_32

    sput-object p2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    goto/16 :goto_4

    :cond_32
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1a

    const-string v0, "wapshop.gameloft.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_1a

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GLIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n+++++++++++ Pre_URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " *********"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->L:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    new-instance v1, Ljava/lang/Integer;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GLIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n+++++++++++ Inc_PageDepth 1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " *********"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    goto/16 :goto_4

    :cond_33
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1a

    const-string v0, "http://twitter.com/oauth/authorize?oauth_token"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->O:Ljava/util/Stack;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GLIVE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n+++++++++++ Inc_PageDepth 2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " *********"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    goto/16 :goto_4

    :cond_34
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ao:Z

    if-eqz v0, :cond_35

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ag:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    :cond_35
    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ao:Z

    goto/16 :goto_5

    :cond_36
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->as:Z

    if-eqz v0, :cond_37

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ak:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    :cond_37
    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->as:Z

    goto/16 :goto_6

    :cond_38
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ap:Z

    if-eqz v0, :cond_39

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ah:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    :cond_39
    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ap:Z

    goto/16 :goto_7

    :cond_3a
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aq:Z

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ai:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    :cond_3b
    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aq:Z

    goto/16 :goto_8

    :cond_3c
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->at:Z

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    :cond_3d
    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->at:Z

    goto/16 :goto_9

    :cond_3e
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ar:Z

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aj:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    :cond_3f
    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ar:Z

    goto/16 :goto_a

    :cond_40
    const-string v0, "http://livewebapp.gameloft.com/glive/messages/sent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_41

    const-string v0, "http://livewebapp.gameloft.com/glive/messages/friends"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_41

    const-string v0, "http://livewebapp.gameloft.com/glive/messages/plays"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_41

    const-string v0, "http://livewebapp.gameloft.com/glive/games"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_41

    const-string v0, "http://livewebapp.gameloft.com/glive/friends/add-friends"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_41

    const-string v0, "http://livewebapp.gameloft.com/glive/login"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_41

    const-string v0, "http://livewebapp.gameloft.com/glive/?lg="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_41

    const-string v0, "http://livewebapp.gameloft.com/glive/messages/show/mid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_28

    :cond_41
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->an:Z

    if-eqz v0, :cond_42

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->af:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    :cond_42
    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->an:Z

    goto/16 :goto_b

    :cond_43
    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aL:Z

    goto/16 :goto_c

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "GLIVE"

    const-string v1, "***************onPageStarted***********"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GLIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***************URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " *********"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aW:[I

    sget v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aJ:I

    aget v2, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "GLIVE"

    const-string v1, "***************shouldOverrideUrlLoading***********"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GLIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***************URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " *********"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "http://dl.gameloft.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->a(Ljava/lang/String;)V

    move v0, v5

    :goto_0
    return v0

    :cond_0
    const-string v0, "http://ingameads.gameloft.com/redir/?from"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->a(Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    :cond_1
    const-string v0, "http://livewebapp.gameloft.com/glive/signal-back"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    :try_start_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ay:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->x:I

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->y:I

    invoke-direct {v0, v1, v2, v5, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ay:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1}, Landroid/widget/AbsoluteLayout;->clearFocus()V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ay:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ay:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->requestFocus()Z

    move v0, v4

    goto :goto_0

    :cond_2
    const-string v0, "http://livewebapp.gameloft.com/glive/friends/show-invite-email"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "GLIVE"

    const-string v1, "\ndo something..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->d:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->x:I

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->y:I

    invoke-direct {v0, v1, v2, v5, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->az:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aG:Landroid/widget/EditText;

    const-string v1, "john@example.com, alex@example.com"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aG:Landroid/widget/EditText;

    const v1, -0x858586

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aG:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v0, "GLIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n link returned:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aF:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sput-boolean v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aH:Z

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aI:Z

    :goto_2
    move v0, v4

    goto/16 :goto_0

    :cond_3
    const-string v0, "http://livewebapp.gameloft.com/glive/friends/index/select/yes?user_name="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "user_name="

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    const-string v1, "&user_id="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->T:[Ljava/lang/String;

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->V:I

    aget-object v3, v0, v5

    aput-object v3, v1, v2

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->U:[Ljava/lang/String;

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->V:I

    aget-object v0, v0, v4

    aput-object v0, v1, v2

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->V:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->V:I

    const-string v0, "GLIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nNUME:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->T:[Ljava/lang/String;

    sget v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->V:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->U:[Ljava/lang/String;

    sget v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->V:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->x:I

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->y:I

    invoke-direct {v0, v1, v2, v5, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ay:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1}, Landroid/widget/AbsoluteLayout;->clearFocus()V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ay:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ay:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->requestFocus()Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$HelloWebViewClient;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->T:[Ljava/lang/String;

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->V:I

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->a(Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_0

    :cond_4
    const-string v0, "http://livewebapp.gameloft.com/glive/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_0

    :cond_5
    const-string v0, "about:blank"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    move v0, v4

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method
