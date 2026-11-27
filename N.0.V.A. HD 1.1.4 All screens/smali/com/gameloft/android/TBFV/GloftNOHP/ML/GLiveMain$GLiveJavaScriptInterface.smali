.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field private synthetic b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;


# direct methods
.method constructor <init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;)V
    .locals 1

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;->a:I

    return-void
.end method


# virtual methods
.method public final checkIsFriend(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->r:Ljava/lang/String;

    return-void
.end method

.method public final getAutoLogin(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->K:Ljava/lang/String;

    return-void
.end method

.method public final getCurentUserName(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->w:Ljava/lang/String;

    return-void
.end method

.method public final getCurentUserUid(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->v:Ljava/lang/String;

    return-void
.end method

.method public final getFriendsMessages(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->p:Ljava/lang/String;

    return-void
.end method

.method public final getGameId(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->q:Ljava/lang/String;

    return-void
.end method

.method public final getGamesMessages(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->o:Ljava/lang/String;

    return-void
.end method

.method public final getInboxMessages(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->n:Ljava/lang/String;

    return-void
.end method

.method public final getPassword(Ljava/lang/String;)V
    .locals 2

    sput-object p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->J:Ljava/lang/String;

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->I:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->J:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->I:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->G:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->J:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->H:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->writeLoginInfo()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aO:Z

    :cond_0
    return-void
.end method

.method public final getSubject(Ljava/lang/String;)V
    .locals 2

    sput-object p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/v;

    invoke-direct {v1, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/v;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getUserID(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    sput-object p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->m:Ljava/lang/String;

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ax:I

    if-lez v0, :cond_1

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/android_uid/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ggi_game/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ax:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v8

    :goto_0
    sget v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ax:I

    if-ge v3, v4, :cond_0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "trophy_id[]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aw:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput v8, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ax:I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GLIVE"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final getUserName(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->I:Ljava/lang/String;

    return-void
.end method

.method public final showAddFriendOption(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->s:Ljava/lang/String;

    return-void
.end method

.method public final showRateOption(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->t:Ljava/lang/String;

    return-void
.end method

.method public final showTitle(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->R:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    :cond_0
    const-string v0, "GLIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n showTitle; isBack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Y:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_3

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aL:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->S:[Ljava/lang/String;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v5

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    sget-object v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aP:[I

    sget v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aJ:I

    aget v3, v3, v4

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->S:[Ljava/lang/String;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    sget-object v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aX:[I

    sget v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aJ:I

    aget v3, v3, v4

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_1
    :goto_0
    const-string v0, "GLIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\npageDepth 0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    const-string v0, "GLIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\npageDepth 1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aY:Z

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;->a:I

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/w;

    invoke-direct {v1, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/w;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    sput-boolean v6, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Y:Z

    return-void

    :cond_2
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->S:[Ljava/lang/String;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object p1, v0, v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    const-string v0, "GLIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n 2. GLiveMain.pageDepth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v0, "GLIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\npageDepth 3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->M:Ljava/lang/Integer;

    const-string v0, "GLIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n 3. GLiveMain.pageDepth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/u;

    invoke-direct {v1, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/u;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method
