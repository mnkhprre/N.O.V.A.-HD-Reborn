.class Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;


# static fields
.field public static a:Z

.field private static b:I

.field private static c:I

.field private static d:I


# instance fields
.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->c:I

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->e:Z

    iput-boolean v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->f:Z

    iput-boolean v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->g:Z

    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaRenderer;

    invoke-direct {v0, p1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaRenderer;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaRenderer;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 2

    :cond_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void
.end method

.method private native nativePause()V
.end method

.method private native nativeResume()V
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->f:Z

    return v0
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    const-string v0, "Nova"

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->MEMORY_STATS(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "OnPause in GLSurface view"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->nativePause()V

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->g:Z

    sput-boolean v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->a:Z

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->suspend()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const-string v0, "Nova"

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->MEMORY_STATS(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "On Resume in GLSurface view"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->nativeResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->g:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->a:Z

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->resume()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onWindowFocusChanged(Z)V

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->a:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->b:I

    if-ge v0, v3, :cond_1

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->b:I

    if-ne v0, v3, :cond_0

    sput v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->b:I

    sput-boolean v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->a:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->onResume()V

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->nativeResume()V

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->f:Z

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->e:Z

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->suspend()V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->onPause()V

    iput-boolean v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView;->f:Z

    goto :goto_0
.end method
