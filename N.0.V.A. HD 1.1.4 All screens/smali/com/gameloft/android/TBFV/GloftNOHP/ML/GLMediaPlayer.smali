.class Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;
.super Ljava/lang/Object;


# static fields
.field private static A:[Z

.field private static B:[I

.field private static C:[Z

.field private static D:[F

.field private static E:[I

.field private static F:Landroid/media/AsyncPlayer;

.field private static G:Ljava/lang/String;

.field public static a:[I

.field public static b:[I

.field static c:[I

.field public static d:Landroid/media/SoundPool;

.field public static e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

.field public static f:Landroid/media/SoundPool;

.field static g:[I

.field static h:I

.field public static i:Z

.field private static j:[Ljava/lang/String;

.field private static k:[Ljava/lang/String;

.field private static l:[Landroid/media/MediaPlayer;

.field private static m:[Landroid/media/MediaPlayer;

.field private static n:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:[[Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;

.field private static s:[I

.field private static t:[I

.field private static u:Z

.field private static v:Z

.field private static w:Landroid/content/Intent;

.field private static x:Ljava/lang/String;

.field private static y:I

.field private static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "installer_000.ogg"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "installer_001.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "installer_002.ogg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->j:[Ljava/lang/String;

    sput v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->h:I

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->v:Z

    sput-object v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->w:Landroid/content/Intent;

    sput v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->y:I

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->z:Z

    sput-boolean v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->i:Z

    new-instance v0, Landroid/media/AsyncPlayer;

    const-string v1, "GLMediaPlayerAsync"

    invoke-direct {v0, v1}, Landroid/media/AsyncPlayer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->F:Landroid/media/AsyncPlayer;

    sput-object v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->G:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ResumeMovie()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;

    const-class v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "video_name"

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static destroySoundPool()V
    .locals 3

    const-string v0, "GLMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySoundPool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->WARN(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->f:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->releaseSoundPool()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->f:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->f:Landroid/media/SoundPool;

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    :cond_1
    return-void
.end method

.method public static getSoundReady(I)I
    .locals 3

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->s:[I

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->s:[I

    aget v1, v1, p0

    add-int/lit8 v1, v1, 0x1

    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->q:I

    rem-int/2addr v1, v2

    aput v1, v0, p0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->s:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getVoiceDuration(I)I
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->a:[I

    aget v0, v0, p0

    return v0
.end method

.method public static init()V
    .locals 2

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->nativeGetTotalSounds()I

    move-result v0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->nativeGetTotalSoundsOfSameInstance()I

    move-result v1

    invoke-static {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->init(II)V

    return-void
.end method

.method public static init(II)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->v:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "66666666666666666666666666666666666"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->nativeInit()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "777777777777777777777777777777777777"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    sput p1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->q:I

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->k:[Ljava/lang/String;

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->a:[I

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->t:[I

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->g:[I

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->q:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;

    sput-object p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->r:[[Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->s:[I

    move v0, v4

    :goto_1
    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->t:[I

    aput v5, v1, v0

    move v1, v4

    :goto_2
    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->q:I

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->r:[[Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;

    aget-object v2, v2, v0

    new-instance v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;

    invoke-direct {v3, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->s:[I

    aput v4, v1, v0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->a:[I

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    new-array v0, v0, [Landroid/media/MediaPlayer;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    new-array v0, v0, [Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    move v0, v4

    :goto_3
    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    if-ge v0, v1, :cond_3

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    new-instance v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    invoke-direct {v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;-><init>()V

    aput-object v2, v1, v0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v1, v1, v0

    iput v4, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v1, v1, v0

    iput-boolean v4, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->b:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->A:[Z

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->B:[I

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->C:[Z

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    new-array v0, v0, [F

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->D:[F

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->E:[I

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->initSoundPoolArray()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->v:Z

    goto/16 :goto_0
.end method

.method public static initInstallerMediaPlayer(I)V
    .locals 4

    const/4 v3, 0x0

    sput p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->o:I

    new-array v0, p0, [Landroid/media/MediaPlayer;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->m:[Landroid/media/MediaPlayer;

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->o:I

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->o:I

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->c:[I

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->d:Landroid/media/SoundPool;

    move v0, v3

    :goto_0
    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->o:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->c:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->o:I

    new-array v0, v0, [Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->n:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;

    move v0, v3

    :goto_1
    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->o:I

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->n:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;

    new-instance v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;

    invoke-direct {v2, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static initSoundPoolArray()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->f:Landroid/media/SoundPool;

    move v0, v3

    :goto_0
    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->g:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    :cond_1
    return-void
.end method

.method public static isMediaPlaying(I)Z
    .locals 2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMusicLoaded(I)I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    if-eq v0, v3, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isSilentMode()Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSoundLoaded(II)I
    .locals 1

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->g:[I

    aget v0, v0, p0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSoundPlaying(I)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->isSoundLoaded(II)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->r:[[Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;

    aget-object v0, v0, p0

    aget-object v0, v0, v4

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->d:I

    if-ne v0, v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->r:[[Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;

    aget-object v2, v2, p0

    aget-object v2, v2, v4

    iget-wide v2, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0
.end method

.method public static loadInstallerMusic(ILandroid/content/Context;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->m:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->m:[Landroid/media/MediaPlayer;

    const v1, 0x7f040006

    add-int/2addr v1, p0

    invoke-static {p1, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    aput-object v1, v0, p0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->m:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    sput p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->h:I

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->m:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/b;

    invoke-direct {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/b;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    const/4 v1, 0x5

    aput v1, v0, p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    aget v0, v0, p0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->m:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    const/4 v1, 0x5

    aput v1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadInstallerSound(ILandroid/content/Context;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->c:[I

    aget v0, v0, p0

    if-gez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->c:[I

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->d:Landroid/media/SoundPool;

    const v2, 0x7f040006

    add-int/2addr v2, p0

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadMovie(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java movieName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput-object p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->x:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;

    const-class v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/MyVideoView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "video_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->c:Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;

    invoke-virtual {v1, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/Nova;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static loadMusic(I)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    aput-object v1, v0, p0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    invoke-static {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->prepareSoundFile(I)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->k:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ogg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    const/4 v1, 0x4

    iput v1, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    sput p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->h:I

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/c;

    invoke-direct {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/c;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    const/4 v1, 0x5

    iput v1, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    :cond_0
    invoke-static {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->restoreSoundFile(I)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->t:[I

    const/4 v1, 0x0

    aput v1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadSound(I)V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->g:[I

    aget v0, v0, p0

    if-gez v0, :cond_1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->a:[I

    aget v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->prepareSoundFile(I)V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->k:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ogg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->a:[I

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    aput v2, v1, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    invoke-static {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->restoreSoundFile(I)V

    :cond_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->g:[I

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->f:Landroid/media/SoundPool;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->k:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".glsnd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, p0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->t:[I

    const/4 v1, 0x1

    aput v1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static native nativeGetTotalSounds()I
.end method

.method public static native nativeGetTotalSoundsOfSameInstance()I
.end method

.method public static native nativeInit()V
.end method

.method public static native nativeSetStopOnMusic(I)V
.end method

.method public static pauseMusic(I)V
    .locals 3

    const/16 v2, 0x8

    :try_start_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    if-ne v0, v2, :cond_2

    :cond_1
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    const/16 v1, 0x8

    iput v1, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v1

    iput-boolean v1, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static pauseSound(I)V
    .locals 1

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public static playInstallerMusic(IFILandroid/content/Context;)V
    .locals 3

    const/4 v2, 0x6

    :try_start_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->m:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    aget v0, v0, p0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {p0, p3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->loadInstallerMusic(ILandroid/content/Context;)V

    :cond_1
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    aget v0, v0, p0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    aget v0, v0, p0

    if-eq v0, v2, :cond_2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    aget v0, v0, p0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    aget v0, v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    :cond_2
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->m:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->m:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-lez p2, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->m:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    const/4 v1, 0x6

    aput v1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static playInstallerSound(IIFLandroid/content/Context;)V
    .locals 8

    :try_start_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->c:[I

    aget v0, v0, p0

    if-gez v0, :cond_0

    invoke-static {p0, p3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->loadInstallerSound(ILandroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->n:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;->a()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->n:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;

    aget-object v7, v0, p0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->isSilentMode()Z

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->d:Landroid/media/SoundPool;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->c:[I

    iget v2, v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;->a:I

    aget v1, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p2

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;->b:I

    iget v0, v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;->b:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    iput v0, v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;->b:I

    :goto_1
    iget v0, v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;->b:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput v0, v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static playMusic(IFI)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->isSilentMode()Z

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->loadMusic(I)V

    :cond_1
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    if-eq v0, v4, :cond_2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    :cond_2
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-lez p2, :cond_4

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    const/4 v1, 0x6

    iput v1, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    if-lez p2, :cond_5

    move v1, v3

    :goto_1
    iput-boolean v1, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->b:Z

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->D:[F

    aput p1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static playSound(IFF)V
    .locals 8

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound vol "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pitch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->g:[I

    aget v0, v0, p0

    if-gez v0, :cond_1

    invoke-static {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->loadSound(I)V

    :cond_1
    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->isSilentMode()Z

    :try_start_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->r:[[Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;

    aget-object v0, v0, p0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->a()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->r:[[Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;

    aget-object v0, v0, p0

    const/4 v1, 0x0

    aget-object v7, v0, v1

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->isSilentMode()Z

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->f:Landroid/media/SoundPool;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->g:[I

    iget v2, v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->a:I

    aget v1, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p1

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->b:I

    iget v0, v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->b:I

    if-nez v0, :cond_2

    const/4 v0, -0x1

    iput v0, v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->b:I

    :goto_1
    iget v0, v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->b:I

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->r:[[Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;

    aget-object v0, v0, p0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput v0, v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->a:[I

    iget v3, v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->a:I

    aget v2, v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->c:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static playSoundAsync(IF)V
    .locals 7

    const v6, 0x7f04000b

    const/16 v0, 0x2a

    sub-int v0, p0, v0

    if-ltz v0, :cond_0

    const/16 v1, 0xec

    if-le v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->isSilentMode()Z

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->F:Landroid/media/AsyncPlayer;

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaRenderer;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://com.gameloft.android.TBFV.GloftNOHP.ML/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v4, v6, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/media/AsyncPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->a:[I

    aget v1, v1, p0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/NovaRenderer;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://com.gameloft.android.TBFV.GloftNOHP.ML/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/2addr v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->a:[I

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    aput v2, v0, p0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static prepareSoundFile(I)V
    .locals 5

    const-string v0, "GLMediaPlayer"

    const-string v1, "Renaming file perfomance warning"

    invoke-static {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLDebug;->WARN(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->k:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".glsnd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->k:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ogg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Renaming index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method public static registerSoundFile(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->k:[Ljava/lang/String;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->k:[Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/gameloft/games/nova/sounds/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p0

    :cond_0
    return-void
.end method

.method public static releaseSoundPool()V
    .locals 4

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->g:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    invoke-static {v0, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->unloadSound(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    if-ge v0, v1, :cond_3

    move v1, v3

    :goto_2
    sget v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->q:I

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->r:[[Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static resetSound(I)V
    .locals 2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    :cond_2
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static restoreSoundFile(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->k:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ogg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->k:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".glsnd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method public static resume()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->initSoundPoolArray()V

    move v0, v3

    :goto_0
    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->t:[I

    aget v1, v1, v0

    if-nez v1, :cond_1

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    if-ne v1, v4, :cond_1

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->loadMusic(I)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v1, v1, v0

    iput v4, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    :cond_0
    :goto_1
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->E:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->A:[Z

    aput-boolean v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->t:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->E:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->loadSound(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static resumeAllMusic(F)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->isSilentMode()Z

    :try_start_0
    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_3

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->b:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    invoke-static {v0, p0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->playMusic(IFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public static resumeMusic(IF)V
    .locals 2

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->isSilentMode()Z

    :try_start_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget-boolean v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->playMusic(IFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static resumeSound(I)V
    .locals 1

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->isSilentMode()Z

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public static setPitch(IIF)V
    .locals 1

    :try_start_0
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->r:[[Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setVolume(F)V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    sub-int/2addr v0, v4

    :goto_1
    if-ltz v0, :cond_0

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->q:I

    sub-int/2addr v1, v4

    :goto_2
    if-ltz v1, :cond_2

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->r:[[Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    sget-object v3, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->f:Landroid/media/SoundPool;

    iget v2, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->b:I

    invoke-virtual {v3, v2, p0, p0}, Landroid/media/SoundPool;->setVolume(IFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setVolumeMusic(F)V
    .locals 2

    :try_start_0
    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0, p0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public static stopAllInstallerMusic()V
    .locals 4

    const/4 v3, 0x7

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->m:[Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->o:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    aget v1, v1, v0

    if-eqz v1, :cond_3

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    aget v1, v1, v0

    if-eq v1, v3, :cond_3

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->m:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    aget v1, v1, v0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    aget v1, v1, v0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    aget v1, v1, v0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    aget v1, v1, v0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    :cond_2
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->m:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->b:[I

    aput v3, v1, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stopAllInstallerSFX()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->o:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->n:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/ad;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static stopAllInstallerSounds()V
    .locals 0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->stopAllInstallerMusic()V

    return-void
.end method

.method public static stopAllMusic()V
    .locals 3

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    if-eqz v1, :cond_2

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->stopMusic(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stopAllSFX()V
    .locals 3

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    if-ge v0, v1, :cond_0

    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->q:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_2

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->r:[[Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->a()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stopAllSounds()V
    .locals 1

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->stopAllSFX()V

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->stopAllMusic()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->F:Landroid/media/AsyncPlayer;

    invoke-virtual {v0}, Landroid/media/AsyncPlayer;->stop()V

    return-void
.end method

.method public static stopMusic(I)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    const/4 v1, 0x7

    iput v1, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static stopSound(I)V
    .locals 2

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    if-eqz v0, :cond_0

    :try_start_0
    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->q:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->r:[[Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;

    aget-object v1, v1, p0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/SoundInstance;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static stopVoice()V
    .locals 1

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->F:Landroid/media/AsyncPlayer;

    invoke-virtual {v0}, Landroid/media/AsyncPlayer;->stop()V

    return-void
.end method

.method public static suspend()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    sget v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->p:I

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->s:[I

    aput v3, v1, v0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->t:[I

    aget v1, v1, v0

    if-nez v1, :cond_1

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v1, v1, v0

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v2

    iput-boolean v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->b:Z

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->stopMusic(I)V

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    iput v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->t:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->E:[I

    sget-object v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->g:[I

    aget v2, v2, v0

    aput v2, v1, v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->stopAllSFX()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->F:Landroid/media/AsyncPlayer;

    invoke-virtual {v0}, Landroid/media/AsyncPlayer;->stop()V

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->destroySoundPool()V

    :cond_3
    return-void
.end method

.method public static unloadMusic(I)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->l:[Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    aput-object v1, v0, p0

    :cond_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->e:[Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;

    aget-object v0, v0, p0

    const/4 v1, 0x1

    iput v1, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/t;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static unloadSound(II)V
    .locals 2

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->u:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->g:[I

    aget v0, v0, p0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->f:Landroid/media/SoundPool;

    sget-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->g:[I

    aget v1, v1, p0

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLMediaPlayer;->g:[I

    const/4 v1, -0x1

    aput v1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static update()V
    .locals 0

    return-void
.end method
