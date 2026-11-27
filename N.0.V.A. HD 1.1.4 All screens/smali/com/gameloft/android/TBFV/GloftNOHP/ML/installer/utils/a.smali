.class public final Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;

.field private e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/f;

.field private f:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->a:Z

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->b:Z

    iput-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->d:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;

    iput-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/f;

    iput-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->f:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->g:Z

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->f:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;

    return-object v0
.end method

.method public final characters([CII)V
    .locals 3

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->c:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->a:Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->c:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->h:Z

    if-eqz v0, :cond_4

    const-string v0, "carrier"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->f:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;->b()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->c:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "wifi_only"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/f;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/f;->a(Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    const-string v0, "carriers"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->h:Z

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "device"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->f:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->d:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v0, "pvrt_textures"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->d:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->a(Z)V

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    const-string v0, "atc_textures"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->d:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->b(Z)V

    goto :goto_0

    :cond_8
    move v1, v3

    goto :goto_3

    :cond_9
    const-string v0, "dxt_textures"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->d:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_a

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->c(Z)V

    goto/16 :goto_0

    :cond_a
    move v1, v3

    goto :goto_4

    :cond_b
    const-string v0, "devices"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->g:Z

    goto/16 :goto_0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->c:Ljava/lang/String;

    :cond_0
    iput-boolean v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->a:Z

    const-string v0, "settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;

    invoke-direct {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->f:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "carriers"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->h:Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->f:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->f:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;->b(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    const-string v0, "devices"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->g:Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->f:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->f:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/k;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->h:Z

    if-eqz v0, :cond_5

    const-string v0, "carrier"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/f;

    invoke-direct {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/f;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/f;

    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->e:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/f;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->g:Z

    if-eqz v0, :cond_1

    const-string v0, "device"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;

    invoke-direct {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->d:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;

    :cond_6
    :goto_1
    const-string v0, "model"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->d:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "manufacturer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/a;->d:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/d;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
