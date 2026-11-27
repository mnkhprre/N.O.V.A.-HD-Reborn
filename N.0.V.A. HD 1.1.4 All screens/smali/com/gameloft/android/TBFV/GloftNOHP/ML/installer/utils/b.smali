.class public final Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a:Ljava/net/HttpURLConnection;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a:Ljava/net/HttpURLConnection;

    const v1, 0x2bf20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a:Ljava/net/HttpURLConnection;

    return-void
.end method
