.class public Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;
.super Landroid/app/Activity;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:[Ljava/lang/String;

.field static c:I

.field static d:I

.field public static e:I

.field public static f:Landroid/widget/AbsoluteLayout;

.field public static g:Landroid/widget/RelativeLayout;

.field public static h:Landroid/webkit/WebView;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:[Ljava/lang/String;


# instance fields
.field private l:Landroid/view/Display;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "http://ingameads.gameloft.com/redir/android/index.php?from=GAME_CODE&lg=LANGUAGE&udid=UDIDPHONE&d=DEVICE_ANDROID&f=FIRMWARE_ANDROID&ver=GAME_VERSION&country=COUNTRY_DETECTED&height=DEVICE_HEIGHT"

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->i:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->j:Ljava/lang/String;

    const-string v0, "http://signal-back.com"

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->a:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Loading..."

    aput-object v1, v0, v3

    const-string v1, "Chargement..."

    aput-object v1, v0, v4

    const-string v1, "L\u00e4dt..."

    aput-object v1, v0, v5

    const-string v1, "Cargando..."

    aput-object v1, v0, v6

    const-string v1, "Caricamento in corso..."

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u30fc\u30c7\u30a3\u30f3\u30b0..."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Carregando..."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\ubd88\ub7ec\uc624\ub294 \uc911..."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u8f7d\u5165\u4e2d\u2026\u2026"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "?\u00ec\u00fd\u00f1\u00e9\u00a1\u00a6\u00a1\u00a6"

    aput-object v2, v0, v1

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->b:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EN"

    aput-object v1, v0, v3

    const-string v1, "FR"

    aput-object v1, v0, v4

    const-string v1, "DE"

    aput-object v1, v0, v5

    const-string v1, "SP"

    aput-object v1, v0, v6

    const-string v1, "IT"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "JP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CN"

    aput-object v2, v0, v1

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->k:[Ljava/lang/String;

    const/16 v0, 0x320

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->c:I

    const/16 v0, 0x4d0

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->d:I

    sput v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->setRequestedOrientation(I)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->l:Landroid/view/Display;

    const/16 v0, 0x4d8

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->d:I

    const/16 v0, 0x320

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->c:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n SCR_W = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   SCR_H = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->g:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->h:Landroid/webkit/WebView;

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/aw;

    invoke-direct {v1, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/aw;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->h:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "TEST"

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Starting igp.."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->e:I

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "device settings detected..1"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "GL_00"

    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "device settings detected..2"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "device settings detected..3"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

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

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "device settings detected.."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->i:Ljava/lang/String;

    const-string v6, "LANGUAGE"

    sget-object v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->k:[Ljava/lang/String;

    sget v8, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->e:I

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->j:Ljava/lang/String;

    const-string v6, "GAME_CODE"

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->j:Ljava/lang/String;

    const-string v5, "COUNTRY_DETECTED"

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->j:Ljava/lang/String;

    const-string v2, "UDIDPHONE"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->j:Ljava/lang/String;

    const-string v1, "DEVICE_ANDROID"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->j:Ljava/lang/String;

    const-string v1, "FIRMWARE_ANDROID"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->j:Ljava/lang/String;

    const-string v1, "GAME_VERSION"

    const-string v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->j:Ljava/lang/String;

    const-string v1, "DEVICE_HEIGHT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->j:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->j:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "mViewSelectLanguage view removed..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->g:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->f:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "adding view mWebView..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->h:Landroid/webkit/WebView;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->c:I

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->d:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->g:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->h:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/IGPMain;->setContentView(Landroid/view/View;)V

    return-void
.end method
