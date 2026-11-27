.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;


# direct methods
.method constructor <init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ab;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ab;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;

    const/4 v1, 0x3

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->F:Ljava/lang/String;

    sget-object v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->G:Ljava/lang/String;

    sget-object v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
