.class public final Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljavax/xml/parsers/SAXParserFactory;

.field private b:Ljavax/xml/parsers/SAXParser;

.field private c:Lorg/xml/sax/XMLReader;

.field private d:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;

.field private e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->a:Ljavax/xml/parsers/SAXParserFactory;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->a:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->b:Ljavax/xml/parsers/SAXParser;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->b:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->c:Lorg/xml/sax/XMLReader;

    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;

    invoke-direct {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->d:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->c:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->d:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->c:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->d:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->a()Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    if-nez p2, :cond_1

    const-string v1, ""

    :goto_1
    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;

    invoke-virtual {v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;->a()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "default"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    :goto_2
    move v4, v3

    move v3, v5

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->a()Z

    move-result v0

    :goto_4
    return v0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v1, p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->a()Z

    move-result v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move v0, v4

    goto :goto_4

    :cond_5
    move v3, v5

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    if-nez p2, :cond_1

    const-string v1, ""

    :goto_1
    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;

    invoke-virtual {v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;->a()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "default"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    :goto_2
    move v4, v3

    move v3, v5

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->b()Z

    move-result v0

    :goto_4
    return v0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v1, p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->b()Z

    move-result v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move v0, v4

    goto :goto_4

    :cond_5
    move v3, v5

    goto :goto_2
.end method
