.class public Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;
.super Landroid/app/Activity;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:Z

.field private static aP:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;

.field private static aQ:I

.field static b:Z

.field private static bl:J

.field private static bt:Z

.field public static i:I

.field private static u:Z

.field private static v:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;


# instance fields
.field private A:Landroid/telephony/TelephonyManager;

.field private final B:Z

.field private final C:Z

.field private final D:Z

.field private E:I

.field private F:Z

.field private G:Z

.field private final H:I

.field private final I:I

.field private final J:Z

.field private final K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:I

.field private N:Z

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:Z

.field private W:Z

.field private final X:I

.field private final Y:I

.field private Z:J

.field private aA:I

.field private aB:I

.field private aC:I

.field private aD:I

.field private aE:I

.field private aF:I

.field private aG:I

.field private aH:I

.field private aI:I

.field private aJ:I

.field private aK:I

.field private aL:I

.field private aM:I

.field private aN:I

.field private aO:I

.field private aR:I

.field private aS:Ljava/lang/String;

.field private aT:I

.field private aU:I

.field private aV:I

.field private aW:I

.field private aX:I

.field private aY:I

.field private aZ:I

.field private aa:J

.field private ab:Landroid/content/res/AssetManager;

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:I

.field private ak:I

.field private al:I

.field private am:I

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:I

.field private at:I

.field private au:I

.field private av:I

.field private aw:I

.field private ax:I

.field private ay:I

.field private az:I

.field private bA:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;

.field private final bB:I

.field private final bC:I

.field private final bD:I

.field private bE:Z

.field private bF:Landroid/content/BroadcastReceiver;

.field private bG:Z

.field private bH:Ljava/util/ArrayList;

.field private bI:I

.field private bJ:I

.field private bK:I

.field private bL:I

.field private ba:I

.field private bb:I

.field private bc:[I

.field private bd:I

.field private be:Landroid/net/ConnectivityManager;

.field private bf:Landroid/net/wifi/WifiManager$WifiLock;

.field private bg:Z

.field private bh:Ljava/io/DataInputStream;

.field private bi:Ljava/io/FileOutputStream;

.field private bj:I

.field private bk:I

.field private bm:Z

.field private bn:Z

.field private bo:Ljava/lang/String;

.field private bp:I

.field private bq:I

.field private br:I

.field private bs:I

.field private bu:Landroid/net/NetworkInfo;

.field private bv:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;

.field private bw:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;

.field private bx:Z

.field private by:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;

.field private bz:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/Vector;

.field e:Ljava/util/Vector;

.field f:I

.field g:I

.field h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field n:Landroid/net/wifi/WifiManager;

.field public o:Z

.field public p:Z

.field q:I

.field public r:Z

.field public s:Z

.field public t:Landroid/view/View$OnClickListener;

.field private w:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;

.field private final x:Ljava/lang/String;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a:Z

    sput-boolean v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->u:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->v:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    sput-boolean v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bl:J

    sput-boolean v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bt:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v6, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->w:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;

    const-string v0, "/data/data/com.gameloft.android.TBFV.GloftNOHP.ML/pack.info"

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->x:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->y:Z

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->z:I

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->B:Z

    iput-boolean v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->C:Z

    iput-boolean v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->D:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->E:I

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->F:Z

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->G:Z

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->H:I

    const/16 v0, 0x1c08

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->I:I

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->J:Z

    const-string v0, "com.gameloft.android.TBFV.GloftNOHP.ML.Nova"

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->K:Ljava/lang/String;

    const-string v0, "/sdcard/gameloft/games/nova/"

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e:Ljava/util/Vector;

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->M:I

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->f:I

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->g:I

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->N:Z

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->O:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->P:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->Q:I

    const/4 v0, -0x3

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->R:I

    const/4 v0, -0x4

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->S:I

    const/4 v0, -0x5

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->T:I

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->V:Z

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->W:Z

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->X:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->Y:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->Z:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aa:J

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->ac:I

    iput v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->ad:I

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->ae:I

    iput v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->af:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->ag:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->ah:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->ai:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aj:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->ak:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->al:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->am:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->an:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->ao:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->ap:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aq:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->ar:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->as:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->at:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->au:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->av:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aw:I

    const/16 v0, 0x1a

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->ax:I

    const/16 v0, 0x1b

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->ay:I

    const/16 v0, 0x1c

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->az:I

    const/16 v0, 0x1d

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aA:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aB:I

    const/16 v0, 0x1f

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aC:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aD:I

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aE:I

    iput v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aF:I

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aG:I

    iput v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aH:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aI:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aJ:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aK:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aL:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aM:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aN:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aO:I

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aR:I

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aU:I

    iput v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aV:I

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aW:I

    iput v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aX:I

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aY:I

    iput v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aZ:I

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->ba:I

    iput v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bb:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bc:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bd:I

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bg:Z

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->o:Z

    iput-object v6, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bi:Ljava/io/FileOutputStream;

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bj:I

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bk:I

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bm:Z

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bn:Z

    iput-boolean v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->p:Z

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bp:I

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bq:I

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->br:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bs:I

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->q:I

    iput-object v6, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bu:Landroid/net/NetworkInfo;

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bx:Z

    const-string v0, "GLoft"

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bz:Ljava/lang/String;

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bB:I

    iput v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bC:I

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bD:I

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bE:Z

    iput-object v6, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bF:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->r:Z

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bG:Z

    iput-boolean v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->s:Z

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bI:I

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bJ:I

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bK:I

    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;

    invoke-direct {v0, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/d;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;)V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->t:Landroid/view/View$OnClickListener;

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bL:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->l:I

    invoke-static {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->setContext(Landroid/content/Context;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static Exit()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private static GetCurrentVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "3.1.4"

    :try_start_0
    const-string v1, "DOWNLOAD_URL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "VERSION_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static GetUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x2

    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------------------------------------getDataStream"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------------------------------------getDataStream"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "NOVA_Ver101_DXT.zip"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "1111111111111111111111111111111111111111111                               6666666666666666666666"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x2

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    move v0, v5

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "44444444444444444444444444444444444444444444444444444"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    :goto_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "66666666666666666666666666666666666666666666666666"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "77777777777777777777777777777777777777777777777777777"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v5

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bh:Ljava/io/DataInputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bh:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bh:Ljava/io/DataInputStream;

    :cond_2
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bh:Ljava/io/DataInputStream;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "3333333333333333333333333333333333333333333333333                          8888888888888888888888"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "555555555555555555555555555555555555555555555555  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)I
    .locals 0

    iput p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bK:I

    return p1
.end method

.method static synthetic access$200(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;)I
    .locals 1

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bJ:I

    return v0
.end method

.method static synthetic access$202(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)I
    .locals 0

    iput p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bJ:I

    return p1
.end method

.method static synthetic access$300(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->F:Z

    return v0
.end method

.method static synthetic access$400(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;)I
    .locals 1

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->z:I

    return v0
.end method

.method static synthetic access$500(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;)I
    .locals 1

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bd:I

    return v0
.end method

.method static synthetic access$502(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)I
    .locals 0

    iput p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bd:I

    return p1
.end method

.method static synthetic access$600(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->createNoMedia(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;I)I
    .locals 0

    iput p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    return p1
.end method

.method private c(I)I
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x2

    const/4 v8, -0x1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".\\\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->g()I

    move-result v2

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->f()I

    move-result v3

    :try_start_0
    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bi:Ljava/io/FileOutputStream;

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->createNoMedia(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :goto_0
    iput v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bj:I

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bi:Ljava/io/FileOutputStream;

    sget-wide v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bl:J

    int-to-long v6, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    move v1, p1

    :goto_1
    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    iput v8, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    :goto_2
    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a()V

    move v0, v10

    :goto_3
    return v0

    :cond_2
    int-to-long v4, v2

    :try_start_1
    sput-wide v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bl:J
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bh:Ljava/io/DataInputStream;

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_3
    :goto_4
    :try_start_3
    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bj:I

    if-lez v1, :cond_4

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bj:I

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bj:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bj:I

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bh:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bi:Ljava/io/FileOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bi:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bk:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bk:I

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->q:I

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bk:I

    div-int/lit16 v1, v1, 0x400

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->q:I

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bk:I

    rem-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bk:I

    move v0, v8

    goto :goto_3

    :catch_1
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    iput v8, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    goto :goto_2

    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bi:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bi:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    iput v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bj:I

    sget-wide v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bl:J

    int-to-long v3, v3

    add-long/2addr v1, v3

    sput-wide v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bl:J

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/ZipFile;->unZip(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    move v0, v10

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    iput v9, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iput v8, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    goto :goto_2

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    iput v9, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    goto/16 :goto_2

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput v9, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    goto/16 :goto_2
.end method

.method private static canReach(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createNoMedia(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d(I)I
    .locals 5

    const/4 v3, 0x1

    const/4 v2, -0x4

    invoke-direct {p0, p1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->c(I)I

    move-result v1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aS:Ljava/lang/String;

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bd:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bd:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bd:I

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h()V

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    :goto_0
    return v0

    :cond_2
    if-nez v1, :cond_5

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    :cond_3
    :goto_1
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    if-ne v0, v2, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".\\\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    goto :goto_0

    :cond_5
    if-ne v1, v3, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    goto :goto_1

    :cond_6
    const/4 v0, -0x1

    if-ne v1, v0, :cond_3

    const/4 v0, -0x5

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private e(I)V
    .locals 6

    const v5, 0x7f030013

    const v3, 0x7f030004

    const/4 v4, 0x1

    move v0, p1

    move-object v1, p0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    iget v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m:I

    iput v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aT:I

    iput v0, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m:I

    const/4 v0, -0x1

    iput v0, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    return-void

    :pswitch_1
    const v2, 0x7f03000b

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto :goto_1

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->Z:J

    const v2, 0x7f03000c

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    invoke-direct {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->l()Z

    move-result v2

    iput-boolean v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->F:Z

    goto :goto_1

    :pswitch_3
    const v2, 0x7f030010

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto :goto_1

    :pswitch_4
    const v2, 0x7f030009

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto :goto_1

    :pswitch_5
    iget-boolean v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->F:Z

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->startActivity(Landroid/content/Intent;)V

    iput-boolean v4, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->G:Z

    goto :goto_1

    :cond_1
    const v2, 0x7f030012

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto :goto_1

    :pswitch_6
    const v2, 0x7f030003

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto :goto_1

    :pswitch_7
    iput-boolean v4, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->r:Z

    iget-object v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bF:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_2

    iput-boolean v4, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->s:Z

    new-instance v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/b;

    invoke-direct {v2, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/b;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;)V

    iput-object v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bF:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bF:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aa:J

    const v2, 0x7f030015

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto :goto_1

    :pswitch_8
    const v2, 0x7f03000a

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto/16 :goto_1

    :pswitch_9
    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto/16 :goto_1

    :pswitch_a
    const v2, 0x7f03000e

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v1, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->saveResourceVersion()V

    goto/16 :goto_1

    :pswitch_c
    iget v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bJ:I

    if-eq v2, v3, :cond_0

    const v2, 0x7f030008

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {v1, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto/16 :goto_1

    :pswitch_e
    iget-boolean v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bn:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->p:Z

    if-eqz v2, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_0

    :pswitch_f
    const v2, 0x7f030014

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto/16 :goto_1

    :pswitch_10
    const v2, 0x7f030011

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto/16 :goto_1

    :pswitch_11
    const v2, 0x7f030002

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto/16 :goto_1

    :pswitch_12
    const v2, 0x7f03000f

    invoke-virtual {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto/16 :goto_1

    :pswitch_13
    const/16 v2, 0x1d

    iput v2, v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m:I

    invoke-virtual {v1, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private f()I
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-boolean v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "A500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "A501"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "inside iffffffffffffffffffffffffff"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " 22222222222222222222222222222222222222MODELid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "invalidate filessssssssssssssssssssssssssss"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "invalidate filessssssssssssssssssssssssssss"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d:Ljava/util/Vector;

    if-nez v0, :cond_3

    move v0, v13

    :goto_1
    return v0

    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device is Invaliddddddddddddddddddddddddddddddddddddd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_4

    move v0, v13

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iput v12, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->M:I

    sput v12, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->i:I

    move v2, v12

    move v3, v12

    :goto_2
    if-ge v2, v1, :cond_b

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;

    iget-boolean v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->N:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".\\\\"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".\\"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\"

    const-string v8, "/"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->e()J

    move-result-wide v6

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->d()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v10, v10

    if-eqz v8, :cond_7

    :cond_5
    move v8, v13

    :goto_3
    if-eqz v8, :cond_8

    move v4, v13

    :goto_4
    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->M:I

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->d()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->M:I

    sget v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->i:I

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->f()I

    move-result v5

    add-int/2addr v4, v5

    sput v4, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->i:I

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->f()I

    move-result v4

    if-le v4, v3, :cond_d

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/h;->f()I

    move-result v0

    :goto_5
    iget-boolean v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->N:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_6

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->q:I

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j()V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto/16 :goto_2

    :cond_7
    move v8, v12

    goto :goto_3

    :cond_8
    if-eqz v4, :cond_9

    invoke-static {v5, v6, v7}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/CRC;->isValidChecksum(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v13

    :goto_6
    if-eqz v4, :cond_a

    move v4, v13

    goto :goto_4

    :cond_9
    move v4, v12

    goto :goto_6

    :cond_a
    move v4, v12

    goto :goto_4

    :cond_b
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->M:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->M:I

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->M:I

    shr-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->g:I

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_c

    move v0, v13

    goto/16 :goto_1

    :cond_c
    move v0, v12

    goto/16 :goto_1

    :cond_d
    move v0, v3

    goto :goto_5
.end method

.method private g()Z
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    const-string v1, "gl_res_ver"

    const-string v2, "GLoft"

    invoke-static {v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "101"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    goto :goto_0
.end method

.method private static getDataServerUrl(I)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    const v0, 0x7f040002

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->ReadFile(I)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_0

    move v1, v3

    :goto_0
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v1, "PVRT:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    :pswitch_1
    const-string v1, "ATC:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :pswitch_2
    const-string v1, "DXT:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private h()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static hasSDCard()I
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()V
    .locals 7

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/16 v5, 0xe

    const/4 v4, 0x0

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->r:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bE:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m:I

    if-ne v0, v5, :cond_1

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->l:I

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->f()I

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a()V

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    :cond_1
    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j()V

    return-void

    :pswitch_1
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b:Z

    if-nez v0, :cond_2

    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    invoke-direct {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    :cond_2
    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    iput v6, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->L:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->p()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    goto :goto_0

    :cond_3
    invoke-direct {p0, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    goto :goto_0

    :pswitch_3
    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->l:I

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->hasSDCard()I

    move-result v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bc:[I

    aput v0, v1, v4

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bc:[I

    aput v0, v1, v6

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->f()I

    move-result v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bc:[I

    aput v0, v1, v3

    invoke-virtual {p0, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->n()I

    move-result v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bc:[I

    aput v0, v1, v2

    :cond_5
    invoke-virtual {p0, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_0

    :cond_7
    move v0, v4

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v6}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x9

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    goto/16 :goto_0

    :pswitch_4
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->l:I

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d(I)I

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->l:I

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->l:I

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aR:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h()V

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->r:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bE:Z

    if-nez v0, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400000

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_c
    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    goto/16 :goto_0

    :pswitch_5
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->r:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bE:Z

    if-nez v0, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400000

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :pswitch_6
    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->i:I

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->M:I

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aP:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;

    if-nez v0, :cond_e

    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->L:Ljava/lang/String;

    const-string v2, "/sdcard/gameloft/games/nova"

    iget-object v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-direct {v0, v1, v2, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    sput-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aP:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;

    :goto_2
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aP:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bL:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->a:I

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aP:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->a()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aP:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->a(Ljava/util/Vector;)V

    goto :goto_2

    :pswitch_7
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aP:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->b()V

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aP:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->c()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aQ:I

    sget v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aQ:I

    shr-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->q:I

    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aP:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;

    iget-boolean v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->b:Z

    if-eqz v0, :cond_f

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    :cond_f
    sget-object v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aP:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;

    iget-boolean v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/j;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static isEnoughInternalSpace()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    const/4 v0, 0x1

    return v0
.end method

.method private j()V
    .locals 3

    const/16 v2, 0xc

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_3
    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/a;

    invoke-direct {v0, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/a;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;)V

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private k()V
    .locals 11

    const/16 v3, 0x1d

    const/16 v9, 0x15

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bx:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v9}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    :cond_0
    return-void

    :pswitch_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->p:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bn:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bx:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "InsTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->o()Z

    :cond_1
    :goto_1
    move v0, v7

    :goto_2
    if-eqz v0, :cond_4

    iput-boolean v7, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->W:Z

    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;

    invoke-direct {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bv:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;

    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bv:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;

    invoke-direct {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;)V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bw:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;

    iput-boolean v8, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bx:Z

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    :goto_3
    iput-boolean v8, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bn:Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "InsTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v7

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    array-length v0, v0

    const/4 v5, 0x2

    if-le v0, v5, :cond_3

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->o()Z

    goto :goto_1

    :cond_3
    sub-long v0, v3, v1

    const-wide/32 v2, 0x93a80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->o()Z

    move v0, v8

    goto :goto_2

    :cond_4
    invoke-direct {p0, v9}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto :goto_3

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f040009

    invoke-static {v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->ReadFile(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://confirmation.gameloft.com/partners/android/update_check.php"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bw:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;

    invoke-virtual {v2, v1, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_0

    :goto_4
    :pswitch_3
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bw:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->c()Z

    move-result v0

    if-nez v0, :cond_5

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bw:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;

    iget-object v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->a:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bw:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;

    iget-object v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->a:Ljava/lang/String;

    const-string v1, "Error: No live release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_0

    :cond_6
    const-string v0, ""

    const-string v1, ""

    const v2, 0x7f040005

    :try_start_1
    invoke-static {v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->ReadFile(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bw:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;

    iget-object v2, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->GetCurrentVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    iput-boolean v7, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bx:Z

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_5

    :cond_7
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_0

    :pswitch_4
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bw:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;

    iget-object v2, v2, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->a:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->p:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    invoke-direct {p0, v9}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private l()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "FALSE"

    if-eqz v0, :cond_1

    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const-string v1, "FALSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;

    invoke-direct {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bv:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;

    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bv:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;

    invoke-direct {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/Device;)V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bw:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bw:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->a()V

    :goto_1
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bw:Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->getLastErrorCode()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/XPlayer;->getWHTTP()Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/HTTP;->a:Ljava/lang/String;

    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private m()I
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x1e

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bq:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v0, v4

    :goto_0
    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bq:I

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bq:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bq:I

    move v0, v4

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bf:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->n:Landroid/net/wifi/WifiManager;

    const-string v1, "Installer"

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bf:Landroid/net/wifi/WifiManager$WifiLock;

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bq:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bq:I

    move v0, v4

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bf:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bf:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bq:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bq:I

    move v0, v4

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bq:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bq:I

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->br:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->br:I

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->br:I

    if-le v0, v5, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a()V

    iput-object v6, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->br:I

    move v0, v4

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bq:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bq:I

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->br:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->br:I

    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->br:I

    if-le v0, v5, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bu:Landroid/net/NetworkInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a()V

    iput-object v6, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    move v0, v3

    :goto_3
    iput v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bq:I

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->br:I

    goto/16 :goto_0

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    iput v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->br:I

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bq:I

    iput v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bd:I

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    iput-boolean v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bg:Z

    move v0, v2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v3

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private n()I
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->f:I

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->f:I

    iget v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->g:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private o()Z
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string v2, "%d/"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "InsTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->WriteFile(Ljava/lang/String;Ljava/lang/String;)Z

    return v5
.end method

.method private static ovWifiMode()Ljava/lang/String;
    .locals 1

    const-string v0, "FALSE"

    return-object v0
.end method

.method private p()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bo:Ljava/lang/String;

    iput-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->by:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;

    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;

    invoke-direct {v0, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->by:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d:Ljava/util/Vector;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->by:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;

    const-string v1, "/data/data/com.gameloft.android.TBFV.GloftNOHP.ML/pack.info"

    invoke-virtual {v0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/c;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d:Ljava/util/Vector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private q()Z
    .locals 7

    const/high16 v6, 0x20000

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bh:Ljava/io/DataInputStream;

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bh:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bL:I

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.gameloft.android.TBFV.GloftNOHP.ML/pack.info"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "/data/data/com.gameloft.android.TBFV.GloftNOHP.ML/pack.info"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move v1, v5

    :goto_1
    iget v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bL:I

    if-ge v1, v2, :cond_3

    iget v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bL:I

    sub-int/2addr v2, v1

    if-le v2, v6, :cond_2

    move v2, v6

    :cond_2
    new-array v3, v2, [B

    iget-object v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bh:Ljava/io/DataInputStream;

    invoke-virtual {v4, v3}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    add-int/2addr v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v5

    goto :goto_0
.end method

.method private static saveResourceVersion()V
    .locals 3

    const-string v0, "gl_res_ver"

    const-string v1, "101"

    const-string v2, "GLoft"

    invoke-static {v0, v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    const-string v1, "{SIZE}"

    :goto_0
    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bh:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bh:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bh:Ljava/io/DataInputStream;

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bi:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bi:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bi:Ljava/io/FileOutputStream;

    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a()V
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

.method public final a(I)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bc:[I

    aget v0, v0, p1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bH:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;

    invoke-direct {v1, p0, p1, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/c;-><init>(Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;ILandroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->be:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bu:Landroid/net/NetworkInfo;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bu:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bu:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bu:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->F:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->be:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bu:Landroid/net/NetworkInfo;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bu:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bu:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->L:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->canReach(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bH:Ljava/util/ArrayList;

    return-object v0
.end method

.method final e()V
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v0, 0x1c08

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finishGame"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->n:Landroid/net/wifi/WifiManager;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->A:Landroid/telephony/TelephonyManager;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->be:Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;

    invoke-direct {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bA:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bA:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;

    invoke-virtual {v0, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bA:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getDataServerUrl(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->L:Ljava/lang/String;

    :goto_1
    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.gameloft.android.TBFV.GloftNOHP.ML/pack.info"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d:Ljava/util/Vector;

    :goto_2
    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->p()V

    iput v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    iput-boolean v3, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->p:Z

    new-instance v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;

    invoke-direct {v0, p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->w:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->A:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/Tracking;->init(Landroid/telephony/TelephonyManager;)V

    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->setContentView(I)V

    sput-object p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->v:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bA:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getDataServerUrl(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->L:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getDataServerUrl(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->L:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->saveResourceVersion()V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;->a()V

    iput-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->h:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/b;

    :cond_0
    sput-object v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->v:Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;

    iput-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->ab:Landroid/content/res/AssetManager;

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->W:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bf:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bf:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bf:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->F:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->G:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->G:Z

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->V:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->V:Z

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->ab:Landroid/content/res/AssetManager;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bE:Z

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->u:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aa:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 9

    const/16 v8, 0xc

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m:I

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    iput-boolean v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->p:Z

    :goto_0
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1e

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->W:Z

    if-nez v0, :cond_1e

    iput-boolean v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bm:Z

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m:I

    if-ne v0, v8, :cond_3

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aT:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aT:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aR:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    :cond_1
    :goto_1
    :pswitch_0
    iput-boolean v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bm:Z

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    goto :goto_1

    :cond_3
    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m:I

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->w:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->y:Z

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->y:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->w:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->y:Z

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->w:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->a()V

    :cond_5
    invoke-direct {p0, v6}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto :goto_1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->w:Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;

    invoke-virtual {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/DRM/Gloft/GloftDRM;->d()I

    move-result v0

    iput v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->z:I

    invoke-direct {p0, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto :goto_1

    :pswitch_3
    move v0, v4

    :goto_2
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bc:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->l:I

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d:Ljava/util/Vector;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_8

    :cond_7
    invoke-direct {p0, v7}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->hasSDCard()I

    move-result v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bc:[I

    aput v0, v1, v4

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v5

    :goto_3
    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bc:[I

    aput v0, v1, v7

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->f()I

    move-result v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bc:[I

    aput v0, v1, v6

    invoke-virtual {p0, v6}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->n()I

    move-result v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bc:[I

    aput v0, v1, v5

    :cond_9
    invoke-virtual {p0, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, v6}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, v7}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    invoke-direct {p0, v7}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_1

    :cond_b
    move v0, v4

    goto :goto_3

    :cond_c
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_1

    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->Z:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d:Ljava/util/Vector;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_e

    :cond_d
    invoke-direct {p0, v8}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p0, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p0, v7}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_1

    :cond_11
    sget-boolean v0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b:Z

    if-eqz v0, :cond_12

    invoke-direct {p0, v8}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_1

    :cond_12
    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_1

    :cond_13
    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->L:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->canReach(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, v8}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_1

    :cond_14
    invoke-direct {p0, v8}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_1

    :pswitch_5
    iput-boolean v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->N:Z

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->f()I

    move-result v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_17

    iput-boolean v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->N:Z

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->saveResourceVersion()V

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->hasSDCard()I

    move-result v1

    iget-object v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bc:[I

    aput v1, v2, v4

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bc:[I

    aput v0, v1, v6

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->n()I

    move-result v0

    iget-object v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bc:[I

    aput v0, v1, v5

    invoke-virtual {p0, v4}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_1

    :cond_16
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_1

    :cond_17
    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->saveResourceVersion()V

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_1

    :pswitch_6
    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->F:Z

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->m()I

    move-result v0

    iget-boolean v1, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->r:Z

    if-eqz v1, :cond_19

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bF:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bF:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bF:Landroid/content/BroadcastReceiver;

    goto/16 :goto_1

    :cond_18
    if-gez v0, :cond_1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_1

    :cond_19
    if-gez v0, :cond_1

    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aT:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_1

    :cond_1a
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    goto/16 :goto_1

    :cond_1b
    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->G:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v8}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->e(I)V

    iput-boolean v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->G:Z

    goto/16 :goto_1

    :pswitch_7
    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->aa:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->moveTaskToBack(Z)Z

    goto/16 :goto_1

    :pswitch_8
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    if-nez v0, :cond_1

    iput v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    goto/16 :goto_1

    :pswitch_9
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    if-nez v0, :cond_1c

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->q:I

    iput v4, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bk:I

    iput v6, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    goto/16 :goto_1

    :cond_1c
    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->i()V

    goto/16 :goto_1

    :pswitch_a
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    if-nez v0, :cond_1

    invoke-virtual {p0, v7}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->saveResourceVersion()V

    :cond_1d
    iput v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->j:I

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->k()V

    goto/16 :goto_1

    :cond_1e
    iget v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->U:I

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->p:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->bg:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1f
    :goto_4
    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->createNoMedia(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/utils/Tracking;->onLaunchGame()V

    sput-boolean v5, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->a:Z

    iput-boolean v5, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->W:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.gameloft.android.TBFV.GloftNOHP.ML.Nova"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_5
    sget-boolean v1, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->u:Z

    if-eqz v1, :cond_21

    const-wide/16 v1, 0x64

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_5

    :cond_20
    iget-boolean v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->o:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_4

    :cond_21
    invoke-virtual {p0, v0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->startActivity(Landroid/content/Intent;)V

    :cond_22
    invoke-virtual {p0}, Lcom/gameloft/android/TBFV/GloftNOHP/ML/installer/GameInstaller;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_1
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method
