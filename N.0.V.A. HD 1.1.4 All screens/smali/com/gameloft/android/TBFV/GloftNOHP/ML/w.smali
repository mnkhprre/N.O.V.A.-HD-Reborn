.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/w;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "GLIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\npageDepth 2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->X:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GLIVE"

    const-string v1, "\nin run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aM:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Z:Landroid/widget/TextView;

    const-string v1, "Twitter"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->updateWebView()V

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aY:Z

    return-void

    :cond_0
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aN:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Z:Landroid/widget/TextView;

    const-string v1, "Facebook"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/w;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;->a:I

    if-lez v0, :cond_2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->S:[Ljava/lang/String;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/w;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;

    iget v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;->a:I

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Z:Landroid/widget/TextView;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->S:[Ljava/lang/String;

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/w;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;

    iget v2, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;->a:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->Z:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
