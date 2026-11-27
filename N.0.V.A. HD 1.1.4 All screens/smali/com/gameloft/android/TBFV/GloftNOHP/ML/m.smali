.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;


# direct methods
.method constructor <init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/m;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sput-boolean v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->al:Z

    const-string v0, "GLIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nItem cliced:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://livewebapp.gameloft.com/glive/challenges/create-challenge?challenged_user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    if-ne p2, v5, :cond_1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->f:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->d:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    const/16 v0, 0x28

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aB:I

    const/16 v0, 0x8

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aC:I

    sput v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->V:I

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->T:[Ljava/lang/String;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->V:I

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->w:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->U:[Ljava/lang/String;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->V:I

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->v:Ljava/lang/String;

    aput-object v2, v0, v1

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->V:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->V:I

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->x:I

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->y:I

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->au:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ay:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1}, Landroid/widget/AbsoluteLayout;->clearFocus()V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ay:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ay:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->requestFocus()Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/m;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;

    iget-object v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->T:[Ljava/lang/String;

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->V:I

    sub-int/2addr v2, v5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->a(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://livewebapp.gameloft.com/glive/games/compare/uid/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/m;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;

    iget-object v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    iget-object v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aa:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/m;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;

    iget-object v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aV:[I

    sget v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aJ:I

    aget v2, v2, v3

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/m;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;

    iget-object v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;->a:[[Ljava/lang/CharSequence;

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aJ:I

    aget-object v1, v1, v2

    new-instance v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/a;

    invoke-direct {v2, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/a;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/m;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aE:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://livewebapp.gameloft.com/glive/friends/delete-friend/uid/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
