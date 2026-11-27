.class public Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;
.super Landroid/app/Activity;


# static fields
.field public static a:Z

.field public static b:I

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:[I

.field private static f:Z

.field private static g:I

.field private static h:I

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:[Ljava/lang/String;

.field private static m:Landroid/widget/RelativeLayout;

.field private static n:Landroid/webkit/WebView;


# instance fields
.field private l:Landroid/view/Display;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v1, 0x9

    const/4 v2, 0x0

    sput-boolean v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->f:Z

    sput-boolean v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->a:Z

    sput v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->b:I

    const/16 v0, 0x1e0

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->g:I

    const/16 v0, 0x320

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->h:I

    const-string v0, "http://ingameads.gameloft.com/redir/android/index.php?from=GAME_CODE&lg=LANGUAGE&udid=UDIDPHONE&d=DEVICE_ANDROID&f=FIRMWARE_ANDROID&ver=GAME_VERSION&country=COUNTRY_DETECTED&height=DEVICE_HEIGHT"

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->i:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->j:Ljava/lang/String;

    const-string v0, "http://signal-back.com"

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->c:Ljava/lang/String;

    const-string v0, "http://ingameads.gameloft.com/redir/android/index.php?page=gameinformation"

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->d:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->e:[I

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "EN"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "IT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SP"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "JP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "KR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BR"

    aput-object v2, v0, v1

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->k:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x7f07012b
        0x7f07012c
        0x7f07012d
        0x7f07012e
        0x7f07012f
        0x7f070130
        0x7f070131
        0x7f070132
        0x7f070133
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.youtube.com/watch?v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vnd.youtube:"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->f:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->finish()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->m:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0, v9}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->setRequestedOrientation(I)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->l:Landroid/view/Display;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->l:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->h:I

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->l:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->g:I

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->m:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->n:Landroid/webkit/WebView;

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/d;

    invoke-direct {v1, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/d;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_1

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->k:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    const-string v1, "NOHP"

    const-string v2, "IGP"

    const-string v3, "Starting igp.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->b:I

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "GLOFT_EMU_001"

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IGP"

    const-string v4, "device settings detected..3"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "IGP"

    const-string v6, "device settings detected.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->i:Ljava/lang/String;

    const-string v6, "LANGUAGE"

    sget-object v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->k:[Ljava/lang/String;

    sget v8, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->b:I

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->j:Ljava/lang/String;

    const-string v6, "GAME_CODE"

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->j:Ljava/lang/String;

    const-string v5, "COUNTRY_DETECTED"

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->j:Ljava/lang/String;

    const-string v2, "UDIDPHONE"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->j:Ljava/lang/String;

    const-string v1, "DEVICE_ANDROID"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->j:Ljava/lang/String;

    const-string v1, "FIRMWARE_ANDROID"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->j:Ljava/lang/String;

    const-string v1, "GAME_VERSION"

    const-string v2, "1.1.5"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->j:Ljava/lang/String;

    const-string v1, "DEVICE_HEIGHT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->j:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->j:Ljava/lang/String;

    const-string v0, "IGP HTML"

    const-string v1, "adding view mWebView..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->n:Landroid/webkit/WebView;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->g:I

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->h:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->m:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    sput-boolean v9, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->f:Z

    goto/16 :goto_0

    :cond_4
    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->b:I

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPActivity;->a()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
