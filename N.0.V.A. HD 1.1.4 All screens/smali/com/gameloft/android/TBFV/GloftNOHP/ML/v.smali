.class final Lcom/gameloft/android/TBFV/GloftNOHP/ML/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/v;->a:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain$GLiveJavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLiveMain;->updateWebView()V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    return-void
.end method
