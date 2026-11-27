.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;


# direct methods
.method constructor <init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/az;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " PLAY mPlay.setOnClickListener "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/az;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;->a()V

    return-void
.end method
