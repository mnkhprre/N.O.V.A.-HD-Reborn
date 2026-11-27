.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;


# direct methods
.method constructor <init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/i;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const v7, 0x7f02001f

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v4

    :goto_0
    return v0

    :pswitch_0
    check-cast p1, Landroid/widget/ImageButton;

    const v0, 0x7f020020

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move v0, v5

    goto :goto_0

    :pswitch_1
    cmpg-float v2, v0, v3

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    cmpg-float v0, v1, v3

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

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

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->x:I

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->y:I

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ay:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1}, Landroid/widget/AbsoluteLayout;->clearFocus()V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->c:Landroid/widget/AbsoluteLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ay:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->ay:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->requestFocus()Z

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aJ:I

    if-ne v0, v6, :cond_3

    const/16 v0, 0x37

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aB:I

    :goto_1
    const/16 v0, 0x8

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aC:I

    sput v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->V:I

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->W:I

    if-ge v0, v6, :cond_2

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v1, 0x2d

    const/16 v2, 0x2e

    sget v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->x:I

    const/16 v4, 0x32

    sub-int/2addr v3, v4

    const/16 v4, 0x19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->av:Landroid/widget/AbsoluteLayout;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aD:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsoluteLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v5

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x28

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->aB:I

    goto :goto_1

    :pswitch_2
    cmpg-float v2, v0, v3

    if-ltz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_4

    cmpg-float v0, v1, v3

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    :cond_4
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_2
    move v0, v5

    goto/16 :goto_0

    :cond_5
    check-cast p1, Landroid/widget/ImageButton;

    const v0, 0x7f020020

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
