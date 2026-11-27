.class Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static a:I

.field private static b:[I

.field private static c:[I


# instance fields
.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x5

    sput v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->a:I

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    aput v3, v0, v4

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v5, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v0, v1

    aput v3, v0, v3

    const/16 v1, 0x3040

    aput v1, v0, v5

    const/4 v1, 0x7

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->a:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->b:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->c:[I

    return-void

    :array_0
    .array-data 4
        0x3020
        0x0
        0x3025
        0x18
        0x3038
    .end array-data
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->j:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->j:[I

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 14

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    move-object/from16 v0, p3

    array-length v0, v0

    move v7, v0

    const/4 v3, 0x0

    move v8, v3

    move v9, v2

    move-object v10, v1

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v4, p3, v8

    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    const-string v2, "Debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chooseConfig d="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " s="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chooseConfig mDepthSize="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->h:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mStencilSize="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->i:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->h:I

    if-lt v11, v2, :cond_2

    iget v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->i:I

    if-lt v1, v2, :cond_2

    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    const-string v2, "Debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chooseConfig r="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " g="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " b="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " a="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->d:I

    sub-int v2, v11, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->e:I

    sub-int v3, v12, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->f:I

    sub-int v3, v13, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->g:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v2

    if-ge v1, v9, :cond_1

    const-string v2, "Debug"

    const-string v3, "chooseConfig  CHOSE THIS ONE"

    invoke-static {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    move-object v3, v4

    :goto_1
    const-string v4, "Debug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chooseConfig distance="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    move-object v2, v3

    :goto_2
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v9, v1

    move-object v10, v2

    goto/16 :goto_0

    :cond_0
    const-string v1, "Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chooseConfig returning closesConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_1
    move v2, v9

    move-object v3, v10

    goto :goto_1

    :cond_2
    move v1, v9

    move-object v2, v10

    goto :goto_2
.end method

.method private b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 12

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    const-string v2, "Debug"

    const-string v3, "Configuration %d:\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v2, p3, v1

    const/16 v3, 0x22

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    const/16 v4, 0x21

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "EGL_BUFFER_SIZE"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "EGL_ALPHA_SIZE"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "EGL_BLUE_SIZE"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "EGL_GREEN_SIZE"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "EGL_RED_SIZE"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "EGL_DEPTH_SIZE"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "EGL_STENCIL_SIZE"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "EGL_CONFIG_CAVEAT"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "EGL_CONFIG_ID"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "EGL_LEVEL"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "EGL_NATIVE_RENDERABLE"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "EGL_NATIVE_VISUAL_ID"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string v6, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string v6, "EGL_PRESERVED_RESOURCES"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string v6, "EGL_SAMPLES"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string v6, "EGL_SAMPLE_BUFFERS"

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const-string v6, "EGL_SURFACE_TYPE"

    aput-object v6, v4, v5

    const/16 v5, 0x14

    const-string v6, "EGL_TRANSPARENT_TYPE"

    aput-object v6, v4, v5

    const/16 v5, 0x15

    const-string v6, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v6, v4, v5

    const/16 v5, 0x16

    const-string v6, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v6, v4, v5

    const/16 v5, 0x17

    const-string v6, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v6, v4, v5

    const/16 v5, 0x18

    const-string v6, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v6, v4, v5

    const/16 v5, 0x19

    const-string v6, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    const-string v6, "EGL_MIN_SWAP_INTERVAL"

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    const-string v6, "EGL_MAX_SWAP_INTERVAL"

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    const-string v6, "EGL_LUMINANCE_SIZE"

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    const-string v6, "EGL_ALPHA_MASK_SIZE"

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    const-string v6, "EGL_COLOR_BUFFER_TYPE"

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    const-string v6, "EGL_RENDERABLE_TYPE"

    aput-object v6, v4, v5

    const/16 v5, 0x20

    const-string v6, "EGL_CONFORMANT"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_2

    aget v7, v3, v6

    aget-object v8, v4, v6

    invoke-interface {p1, p2, v2, v7, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "Debug"

    const-string v9, "  %s: %d\n"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    const/4 v8, 0x1

    const/4 v11, 0x0

    aget v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const-string v7, "Debug"

    const-string v9, "  %s: failed\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v7

    const/16 v8, 0x3000

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x30e2
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
    .end array-data
.end method

.method private static printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/16 v1, 0x21

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "EGL_BUFFER_SIZE"

    aput-object v2, v1, v8

    const-string v2, "EGL_ALPHA_SIZE"

    aput-object v2, v1, v9

    const-string v2, "EGL_BLUE_SIZE"

    aput-object v2, v1, v10

    const/4 v2, 0x3

    const-string v3, "EGL_GREEN_SIZE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "EGL_RED_SIZE"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "EGL_DEPTH_SIZE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "EGL_STENCIL_SIZE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "EGL_CONFIG_CAVEAT"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "EGL_CONFIG_ID"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "EGL_LEVEL"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "EGL_NATIVE_RENDERABLE"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "EGL_NATIVE_VISUAL_ID"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "EGL_PRESERVED_RESOURCES"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "EGL_SAMPLES"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "EGL_SAMPLE_BUFFERS"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "EGL_SURFACE_TYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "EGL_TRANSPARENT_TYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "EGL_MIN_SWAP_INTERVAL"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "EGL_MAX_SWAP_INTERVAL"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "EGL_LUMINANCE_SIZE"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "EGL_ALPHA_MASK_SIZE"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "EGL_COLOR_BUFFER_TYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "EGL_RENDERABLE_TYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "EGL_CONFORMANT"

    aput-object v3, v1, v2

    new-array v2, v9, [I

    move v3, v8

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget v4, v0, v3

    aget-object v5, v1, v3

    invoke-interface {p0, p1, p2, v4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Debug"

    const-string v6, "  %s: %d\n"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v5, v7, v8

    aget v5, v2, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "Debug"

    const-string v6, "  %s: failed\n"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    const/16 v5, 0x3000

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x30e2
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
    .end array-data
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    const/4 v4, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Inside chooseConfig"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v4

    :goto_0
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s_configAttribs2@@@@@@@@@@@@@@@@@@@@@@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->b:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v5, v0, [I

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->c:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v6, v5, v4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numConfigs@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@         "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chooseConfig: num_config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v5, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v6, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v3, v6, [Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->c:[I

    move-object v0, p1

    move-object v1, p2

    move v4, v6

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "printConfigs(egl, display, configs);@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V

    invoke-direct {p0, p1, p2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaGLSurfaceView$ConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method
