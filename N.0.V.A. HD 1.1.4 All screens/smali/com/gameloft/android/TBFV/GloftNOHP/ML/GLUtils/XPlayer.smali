.class public final Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Config;


# static fields
.field public static b:Ljava/lang/String;

.field public static c:J

.field private static d:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;

.field private static k:J

.field private static m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

.field private static n:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/c;

.field private static o:I


# instance fields
.field public a:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->k:J

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->b:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/c;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->n:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/c;

    return-void
.end method

.method public constructor <init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://confirmation.gameloft.com/android/3g_carrier.php"

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->i:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->j:I

    sput-object p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->d:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->e:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    invoke-direct {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;-><init>()V

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->b:Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->l:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method private static buildBaseTracking()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "game="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getDemoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&network_country_ISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&network_operator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&network_operator_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sim_country_iso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sim_operator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sim_operator_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&is_network_roaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getIsRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&android_build_device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&android_build_model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getPhoneModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->GetSerialKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static cancel()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->c:J

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;->b()V

    return-void
.end method

.method public static getCarrier()Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;
    .locals 1

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getCarrier()Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/b;

    move-result-object v0

    return-object v0
.end method

.method public static getDevice()Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->d:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;

    return-object v0
.end method

.method public static getLastErrorCode()I
    .locals 1

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->o:I

    return v0
.end method

.method public static getLastErrorMessage()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private static getValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v0, 0x7c

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    if-gez v0, :cond_2

    move-object v0, v4

    goto :goto_0

    :cond_2
    sub-int v1, v0, v2

    :try_start_0
    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_0
.end method

.method public static getWHTTP()Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    return-object v0
.end method

.method public static setLastErrorMessage(I)V
    .locals 0

    sput p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->o:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "game="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getDemoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&network_country_ISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&network_operator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&network_operator_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sim_country_iso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sim_operator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sim_operator_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&is_network_roaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getIsRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&android_build_device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&android_build_model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;->getPhoneModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->GetSerialKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://confirmation.gameloft.com/android/3g_carrier.php"

    iput-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->l:Ljava/lang/String;

    const/16 v1, -0x64

    sput v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->o:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->c:J

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->a:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;->b()V

    const/16 v0, -0x64

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->o:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->c:J

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    invoke-virtual {v0, p1, p2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Z
    .locals 6

    const/16 v2, 0x28

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f40

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->cancel()V

    const/4 v0, -0x2

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->o:I

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    iget-boolean v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;->c:Z

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    iget-object v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    iget-object v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;->a:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_5

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    iget-object v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;->a:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "FALSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sput v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->o:I

    move v0, v4

    goto :goto_0

    :cond_4
    sput v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->o:I

    move v0, v4

    goto :goto_0

    :cond_5
    sput v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->o:I

    move v0, v4

    goto :goto_0
.end method

.method public final c()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->a:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->cancel()V

    const/4 v0, -0x2

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->o:I

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    iget-boolean v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;->c:Z

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->m:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    iget-object v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;->a:Ljava/lang/String;

    const-string v1, "VERSION_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "DOWNLOAD_URL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->a:Ljava/lang/String;

    move v0, v4

    goto :goto_0

    :cond_3
    const-string v1, "Error: No live release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->a:Ljava/lang/String;

    move v0, v4

    goto :goto_0

    :cond_4
    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_0

    :cond_5
    const/16 v0, 0x28

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->o:I

    move v0, v5

    goto :goto_0
.end method
