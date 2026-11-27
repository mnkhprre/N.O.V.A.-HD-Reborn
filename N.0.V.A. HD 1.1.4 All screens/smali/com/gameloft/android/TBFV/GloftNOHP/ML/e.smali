.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;


# direct methods
.method constructor <init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/e;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aG:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/e;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    iget-object v3, v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aa:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/e;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aR:[I

    sget v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aJ:I

    aget v1, v1, v3

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/e;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aQ:[I

    sget v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aJ:I

    aget v1, v1, v3

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ax;

    invoke-direct {v1, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ax;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/e;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aE:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{2,6}$"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    move v2, v6

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->d:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/e;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->au:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->az:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ao:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aI:Z

    if-eqz v0, :cond_3

    sput-boolean v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ao:Z

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v1, 0x2d

    const/16 v2, 0x28

    sget v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->x:I

    const/16 v4, 0x32

    sub-int/2addr v3, v4

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ag:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aG:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sget-boolean v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aI:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://livewebapp.gameloft.com/glive/games/recommend-via-mail/id/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/android_uid/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const-string v3, "GLIVE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n link:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v6

    :goto_3
    array-length v5, v0

    if-ge v4, v5, :cond_5

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "name[]"

    aget-object v7, v0, v4

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "email[]"

    aget-object v7, v0, v4

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://livewebapp.gameloft.com/glive/friends/show-invite-email/android_uid/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    :try_start_1
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
