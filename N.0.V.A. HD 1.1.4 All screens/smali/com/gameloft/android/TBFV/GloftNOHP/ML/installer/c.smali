.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;


# direct methods
.method constructor <init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iput p2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->a:I

    iput-object p3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->a:I

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->setContentView(I)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$200(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$102(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)I

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->a:I

    invoke-static {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$202(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)I

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v2, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    :goto_2
    return-void

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f090020

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$300(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f070022

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->b:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f070023

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->b:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto :goto_2

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f070026

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->b:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f070025

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->b:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f090022

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f090023

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->i:I

    shr-int/lit8 v1, v1, 0x14

    add-int/lit8 v1, v1, 0x1

    sget-boolean v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v3, 0x7f07002d

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v3, 0x7f07000f

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f090024

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$400(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;)I

    move-result v2

    const-string v3, "{GAME_NAME}"

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v5, 0x7f070134

    invoke-virtual {v4, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f09002d

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-boolean v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f07002c

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget v5, v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f07000e

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget v5, v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f07000d

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget v5, v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->g:I

    iget-object v6, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget v6, v6, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->f:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f09002f

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f090033

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f090032

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f09000f

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f090010

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f090011

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f09000a

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f09000b

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f090029

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f09002a

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f090016

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->i:I

    div-int/lit16 v1, v1, 0x400

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->i:I

    shr-int/lit8 v1, v1, 0x14

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v3, 0x7f07002e

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f07002f

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$300(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$500(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->i:I

    shr-int/lit8 v1, v1, 0x14

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v3, 0x7f070019

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f090031

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f07001e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->b:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f070030

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f09001d

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f09001e

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f090019

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f09001a

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f070031

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f090012

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$300(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f070024

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->b:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f09000d

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f09000e

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f09002b

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f09002c

    invoke-virtual {v0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f030001
        :pswitch_8
        :pswitch_10
        :pswitch_7
        :pswitch_f
        :pswitch_a
        :pswitch_a
        :pswitch_e
        :pswitch_d
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_11
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_c
        :pswitch_b
        :pswitch_6
    .end packed-switch
.end method
