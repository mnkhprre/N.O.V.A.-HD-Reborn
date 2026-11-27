.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;


# direct methods
.method constructor <init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/16 v2, 0x15

    const/16 v6, 0x13

    const/4 v5, 0x1

    const/16 v4, 0xc

    const/4 v3, 0x0

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :catch_0
    move-exception v1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iput-boolean v3, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->p:Z

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->finish()V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$300(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v6}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v1, 0x32

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iput-boolean v5, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->o:Z

    :cond_2
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$502(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)I

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$500(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$502(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)I

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b()Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto/16 :goto_1

    :cond_4
    :try_start_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v2, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v2, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$600(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$702(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)I

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f030005

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v6}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v1, 0x32

    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iput-boolean v5, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->o:Z

    :cond_6
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$502(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)I

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v1, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->moveTaskToBack(Z)Z

    goto/16 :goto_1

    :pswitch_8
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iput-boolean v3, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->r:Z

    :pswitch_9
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    invoke-virtual {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a()V

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    :cond_8
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iput-boolean v3, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->p:Z

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v6}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto/16 :goto_1

    :pswitch_a
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iput-boolean v5, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->p:Z

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$702(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)I

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e()V

    goto/16 :goto_1

    :pswitch_b
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iput v3, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->l:I

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a()V

    sget-boolean v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto/16 :goto_1

    :pswitch_c
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m:I

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget v2, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    iput v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->k:I

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const/4 v2, 0x5

    iput v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f030007

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto/16 :goto_1

    :pswitch_d
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v6}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    :try_start_4
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->p:Z

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-virtual {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a()V

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e:Ljava/util/Vector;

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget v2, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->l:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v3, v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".\\\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_1

    :pswitch_e
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m:I

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iget v2, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->k:I

    iput v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const v2, 0x7f030005

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto/16 :goto_1

    :pswitch_f
    const-string v1, "gl_res_ver"

    const-string v2, "0.0.1"

    const-string v3, "GLoft"

    invoke-static {v1, v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto/16 :goto_1

    :pswitch_10
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto/16 :goto_1

    :pswitch_11
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    const/16 v2, 0x18

    invoke-static {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto/16 :goto_1

    :pswitch_12
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$702(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)I

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    invoke-static {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V

    goto/16 :goto_1

    :catch_2
    move-exception v1

    goto/16 :goto_2

    :catch_3
    move-exception v1

    goto/16 :goto_4

    :catch_4
    move-exception v1

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x7f09000a
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_2
        :pswitch_6
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_9
        :pswitch_11
        :pswitch_12
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
