.class public Lcom/android/systemui/statusbar/WeatherView;

.super Landroid/widget/TextView;

.source "WeatherView.java"

# annotations

.annotation system Ldalvik/annotation/MemberClasses;

    value = {

        Lcom/android/systemui/statusbar/WeatherView$WeatherContentObserver;,

        Lcom/android/systemui/statusbar/WeatherView$WeatherRunnable;

    }

.end annotation

# static fields

.field private static final WEATHER_URI:Landroid/net/Uri;

# instance fields

.field private final NO_WEATHER:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

    .annotation build Landroid/annotation/SuppressLint;

        value = {

            "HandlerLeak"

        }

    .end annotation

.end field

.field private final mWeatherObserver:Landroid/database/ContentObserver;

.field private mWeatherRunnable:Lcom/android/systemui/statusbar/WeatherView$WeatherRunnable;

# direct methods

.method static constructor <clinit>()V

    .registers 1

    .line 18

    const-string v0, "content://weather/weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/WeatherView;->WEATHER_URI:Landroid/net/Uri;

    return-void

.end method

.method public constructor <init>(Landroid/content/Context;)V

    .registers 3

    .param p1, "context"    # Landroid/content/Context;

    .line 33

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/WeatherView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34

    return-void

.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .registers 4

    .param p1, "context"    # Landroid/content/Context;

    .param p2, "attrs"    # Landroid/util/AttributeSet;

        .annotation build Landroid/support/annotation/Nullable;

        .end annotation

    .end param

    .line 37

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/WeatherView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38

    return-void

.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .registers 8

    .param p1, "context"    # Landroid/content/Context;

    .param p2, "attrs"    # Landroid/util/AttributeSet;

        .annotation build Landroid/support/annotation/Nullable;

        .end annotation

    .end param

    .param p3, "defStyleAttr"    # I

    .line 41

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/WeatherView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11042c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/WeatherView;->NO_WEATHER:Ljava/lang/String;

    .line 20

    new-instance v0, Lcom/android/systemui/statusbar/WeatherView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/WeatherView$1;-><init>(Lcom/android/systemui/statusbar/WeatherView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/WeatherView;->mHandler:Landroid/os/Handler;

    .line 28

    new-instance v0, Lcom/android/systemui/statusbar/WeatherView$WeatherContentObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/WeatherView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/WeatherView$WeatherContentObserver;-><init>(Lcom/android/systemui/statusbar/WeatherView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/WeatherView;->mWeatherObserver:Landroid/database/ContentObserver;

    .line 42

    iput-object p1, p0, Lcom/android/systemui/statusbar/WeatherView;->mContext:Landroid/content/Context;

    .line 43

    new-instance v0, Lcom/android/systemui/statusbar/WeatherView$WeatherRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/WeatherView$WeatherRunnable;-><init>(Lcom/android/systemui/statusbar/WeatherView;Lcom/android/systemui/statusbar/WeatherView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/WeatherView;->mWeatherRunnable:Lcom/android/systemui/statusbar/WeatherView$WeatherRunnable;

    .line 44

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/WeatherView;->WEATHER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/statusbar/WeatherView;->mWeatherObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45

    invoke-direct {p0}, Lcom/android/systemui/statusbar/WeatherView;->updateWeatherInfo()V

    .line 46

    return-void

.end method

.method static synthetic access$100()Landroid/net/Uri;

    .registers 1

    .line 17

    sget-object v0, Lcom/android/systemui/statusbar/WeatherView;->WEATHER_URI:Landroid/net/Uri;

    return-object v0

.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/WeatherView;)Landroid/content/Context;

    .registers 2

    .param p0, "x0"    # Lcom/android/systemui/statusbar/WeatherView;

    .line 17

    iget-object v0, p0, Lcom/android/systemui/statusbar/WeatherView;->mContext:Landroid/content/Context;

    return-object v0

.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/WeatherView;)Ljava/lang/String;

    .registers 2

    .param p0, "x0"    # Lcom/android/systemui/statusbar/WeatherView;

    .line 17

    iget-object v0, p0, Lcom/android/systemui/statusbar/WeatherView;->NO_WEATHER:Ljava/lang/String;

    return-object v0

.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/WeatherView;)Landroid/os/Handler;

    .registers 2

    .param p0, "x0"    # Lcom/android/systemui/statusbar/WeatherView;

    .line 17

    iget-object v0, p0, Lcom/android/systemui/statusbar/WeatherView;->mHandler:Landroid/os/Handler;

    return-object v0

.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/WeatherView;)V

    .registers 1

    .param p0, "x0"    # Lcom/android/systemui/statusbar/WeatherView;

    .line 17

    invoke-direct {p0}, Lcom/android/systemui/statusbar/WeatherView;->updateWeatherInfo()V

    return-void

.end method

.method private updateWeatherInfo()V

    .registers 5

    .line 49

    iget-object v0, p0, Lcom/android/systemui/statusbar/WeatherView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/WeatherView;->mWeatherRunnable:Lcom/android/systemui/statusbar/WeatherView$WeatherRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50

    iget-object v0, p0, Lcom/android/systemui/statusbar/WeatherView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/WeatherView;->mWeatherRunnable:Lcom/android/systemui/statusbar/WeatherView$WeatherRunnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51

    return-void

.end method

# virtual methods

.method protected onDetachedFromWindow()V

    .registers 3

    .line 94

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 95

    iget-object v0, p0, Lcom/android/systemui/statusbar/WeatherView;->mWeatherObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    .line 96

    iget-object v0, p0, Lcom/android/systemui/statusbar/WeatherView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/WeatherView;->mWeatherObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 98

    :cond_12

    return-void

.end method

