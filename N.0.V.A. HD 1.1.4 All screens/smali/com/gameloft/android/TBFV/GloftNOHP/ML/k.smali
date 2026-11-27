.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:[[Ljava/lang/CharSequence;

.field final synthetic b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

.field private synthetic c:[[Ljava/lang/CharSequence;

.field private synthetic d:[[Ljava/lang/CharSequence;

.field private synthetic e:[[Ljava/lang/CharSequence;

.field private synthetic f:[[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;[[Ljava/lang/CharSequence;[[Ljava/lang/CharSequence;[[Ljava/lang/CharSequence;[[Ljava/lang/CharSequence;[[Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    iput-object p2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;->c:[[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;->a:[[Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;->d:[[Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;->e:[[Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;->f:[[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const v8, 0x7f020025

    const v7, 0x7f020024

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v6

    :goto_0
    return v1

    :pswitch_0
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move v1, v5

    goto :goto_0

    :pswitch_1
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    move-object v1, v0

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    cmpg-float v1, v2, v4

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_0

    cmpg-float v1, v3, v4

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-gtz v1, :cond_0

    sget-boolean v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->al:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->al:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    iget-object v2, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aa:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;->b:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    sget-object v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aT:[I

    sget v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aJ:I

    aget v3, v3, v4

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->r:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->t:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;->c:[[Ljava/lang/CharSequence;

    sget v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aJ:I

    aget-object v2, v2, v3

    new-instance v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/m;

    invoke-direct {v3, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/m;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    new-instance v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/n;

    invoke-direct {v2, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/n;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aE:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    move v1, v5

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;->d:[[Ljava/lang/CharSequence;

    sget v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aJ:I

    aget-object v2, v2, v3

    new-instance v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/r;

    invoke-direct {v3, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/r;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->s:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;->e:[[Ljava/lang/CharSequence;

    sget v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aJ:I

    aget-object v2, v2, v3

    new-instance v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/p;

    invoke-direct {v3, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/p;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;->f:[[Ljava/lang/CharSequence;

    sget v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aJ:I

    aget-object v2, v2, v3

    new-instance v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/o;

    invoke-direct {v3, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/o;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/k;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :pswitch_2
    cmpg-float v1, v2, v4

    if-ltz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_5

    cmpg-float v1, v3, v4

    if-ltz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-lez v1, :cond_6

    :cond_5
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_2
    move v1, v5

    goto/16 :goto_0

    :cond_6
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
