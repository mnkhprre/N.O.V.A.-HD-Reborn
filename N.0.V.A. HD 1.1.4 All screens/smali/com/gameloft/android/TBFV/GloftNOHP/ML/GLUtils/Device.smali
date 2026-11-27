.class public Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;
.super Ljava/lang/Object;


# static fields
.field private static a:[[Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Z

.field private static m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;

.field private static n:Landroid/webkit/WebView;

.field private static r:Landroid/net/wifi/WifiManager;

.field private static s:Landroid/net/ConnectivityManager;

.field private static t:I

.field private static v:[B


# instance fields
.field private final l:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "eng"

    aput-object v2, v1, v4

    const-string v2, "en"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "fra"

    aput-object v2, v1, v4

    const-string v2, "fr"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "deu"

    aput-object v2, v1, v4

    const-string v2, "de"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "esl"

    aput-object v3, v2, v4

    const-string v3, "es"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "spa"

    aput-object v3, v2, v4

    const-string v3, "es"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ita"

    aput-object v3, v2, v4

    const-string v3, "it"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "jpn"

    aput-object v3, v2, v4

    const-string v3, "jp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "por"

    aput-object v3, v2, v4

    const-string v3, "br"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "por"

    aput-object v3, v2, v4

    const-string v3, "pt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->a:[[Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->b:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->c:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->d:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->e:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->f:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->g:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->h:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->i:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->j:Ljava/lang/String;

    sput-object v6, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->n:Landroid/webkit/WebView;

    sput-object v6, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->s:Landroid/net/ConnectivityManager;

    new-array v0, v5, [B

    aput-byte v4, v0, v4

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->v:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "4"

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->l:Ljava/lang/String;

    const-string v0, "V007"

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->o:Ljava/lang/String;

    const-string v0, "UNLOCK"

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->p:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->u:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->InitDeviceValues()V

    return-void
.end method

.method private static InitDeviceValues()V
    .locals 4

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->s:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->s:Landroid/net/ConnectivityManager;

    :cond_0
    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->b:Ljava/lang/String;

    :cond_1
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "111"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMEIIIIIIIIIIIIIIIIIIIIIIIIIII ================== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->d:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->d:Ljava/lang/String;

    :cond_4
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->e:Ljava/lang/String;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->e:Ljava/lang/String;

    :cond_5
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->f:Ljava/lang/String;

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->f:Ljava/lang/String;

    :cond_6
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->g:Ljava/lang/String;

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->g:Ljava/lang/String;

    :cond_7
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->h:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->h:Ljava/lang/String;

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->h:Ljava/lang/String;

    :cond_9
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->h:Ljava/lang/String;

    if-nez v1, :cond_a

    const-string v1, "00"

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->h:Ljava/lang/String;

    :cond_a
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->i:Ljava/lang/String;

    if-nez v1, :cond_b

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->i:Ljava/lang/String;

    :cond_b
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->j:Ljava/lang/String;

    if-nez v1, :cond_c

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->j:Ljava/lang/String;

    :cond_c
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    sput-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->k:Z

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->createUniqueCode()I

    move-result v0

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->t:I

    :try_start_1
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->n:Landroid/webkit/WebView;

    if-nez v0, :cond_d

    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->n:Landroid/webkit/WebView;

    :cond_d
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->n:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;

    invoke-direct {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;-><init>()V

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, "GL_EMU_001"

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public static IsWifiEnable()Z
    .locals 2

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->r:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "&"

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static a()[B
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->v:[B

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static b()[B
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->v:[B

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static c()[B
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->v:[B

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static createUniqueCode()I
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide v2, 0x40c15c8000000000L    # 8889.0

    mul-double/2addr v0, v2

    const-wide v2, 0x40915c0000000000L    # 1111.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static d()[B
    .locals 1

    const-string v0, "1.1.4"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static e(I)V
    .locals 0

    sput p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->t:I

    return-void
.end method

.method public static f()[B
    .locals 1

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static getCarrier()Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;

    return-object v0
.end method

.method public static getDemoCode()Ljava/lang/String;
    .locals 1

    const-string v0, "G175"

    return-object v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHostName()[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getIsRoaming()Z
    .locals 1

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->k:Z

    return v0
.end method

.method private static getLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->a:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->a:[[Ljava/lang/String;

    aget-object v1, v1, v0

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->a:[[Ljava/lang/String;

    aget-object v0, v1, v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "en"

    goto :goto_1
.end method

.method public static getLineNumber()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkOperator()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneModel()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimCountryIso()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static getSimOperator()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static getSimOperatorName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static getUniqueCode()I
    .locals 1

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->t:I

    return v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static init()V
    .locals 0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->InitDeviceValues()V

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->nativeInit()V

    return-void
.end method

.method public static native nativeInit()V
.end method
