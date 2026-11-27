.class public Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/content/SharedPreferences;

.field private o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

.field private p:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NOHP"

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->a:Ljava/lang/String;

    const-string v0, "GLoft"

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->b:Ljava/lang/String;

    iput v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->c:I

    iput v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->e:I

    iput v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->f:I

    const-string v0, "1045"

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->g:Ljava/lang/String;

    const-string v0, "http://confirmation.gameloft.com/partners/android/validate_key.php?key=#KEY#&product=#PRODUCT_ID#&imei=#ID#"

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->i:Landroid/content/Context;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->i:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "111"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->l:Ljava/lang/String;

    :cond_1
    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOHP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->i:Landroid/content/Context;

    const-string v1, "GLoft"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->n:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->n:Landroid/content/SharedPreferences;

    const-string v1, "gl_a"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iput v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    const-string v0, "1045"

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->g()V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->e()V

    goto :goto_0
.end method

.method private a(I)[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;)V
    .locals 0

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->g()V

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->n:Landroid/content/SharedPreferences;

    const-string v1, "gl_l"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->n:Landroid/content/SharedPreferences;

    const-string v1, "gl_d"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    invoke-virtual {v2, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    aget-object v0, v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private g()V
    .locals 6

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gl_a"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_b"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_c"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_d"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    invoke-virtual {v3, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_e"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_f"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_g"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_h"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_i"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_j"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_k"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_l"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    invoke-virtual {v3, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_m"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_n"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_o"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_p"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_q"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_r"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_s"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    const-string v3, "http://confirmation.gameloft.com/partners/android/validate_key.php?key=#KEY#&product=#PRODUCT_ID#&imei=#ID#"

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gl_t"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->n:Landroid/content/SharedPreferences;

    const-string v1, "gl_s"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->o:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/StringEncrypter;->b(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->j:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->g()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->j:I

    const v0, 0x7f040009

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->a(I)[B

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iput v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->j:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->j:I

    if-nez v0, :cond_5

    move v0, v4

    :goto_1
    return v0

    :cond_1
    const-string v1, "1045"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "http://confirmation.gameloft.com/partners/android/validate_key.php?key=#KEY#&product=#PRODUCT_ID#&imei=#ID#"

    const-string v1, "#KEY#"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#PRODUCT_ID#"

    const-string v2, "1045"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#ID#"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v0, "OK 123451234512345"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    :goto_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->g()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->j:I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "1045"

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->m:Ljava/lang/String;

    iput v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->j:I

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->m:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->j:I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->p:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->m:Ljava/lang/String;

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->j:I

    goto/16 :goto_0

    :cond_5
    move v0, v3

    goto/16 :goto_1
.end method

.method public final c()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->k:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->j:I

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public final d()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->j:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f070037

    goto :goto_0

    :pswitch_1
    const v0, 0x7f070036

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
