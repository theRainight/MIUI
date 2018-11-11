.class Lcom/android/systemui/statusbar/WeatherView$1;

.super Landroid/os/Handler;

.source "WeatherView.java"

# annotations

.annotation system Ldalvik/annotation/EnclosingClass;

    value = Lcom/android/systemui/statusbar/WeatherView;

.end annotation

.annotation system Ldalvik/annotation/InnerClass;

    accessFlags = 0x0

    name = null

.end annotation

# instance fields

.field final synthetic this$0:Lcom/android/systemui/statusbar/WeatherView;

# direct methods

.method constructor <init>(Lcom/android/systemui/statusbar/WeatherView;)V

    .registers 2

    .param p1, "this$0"    # Lcom/android/systemui/statusbar/WeatherView;

    .line 21

    iput-object p1, p0, Lcom/android/systemui/statusbar/WeatherView$1;->this$0:Lcom/android/systemui/statusbar/WeatherView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void

.end method

# virtual methods

.method public handleMessage(Landroid/os/Message;)V

    .registers 6

    .param p1, "msg"    # Landroid/os/Message;

    .line 24

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 25

    .local v0, "weatherText":Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/WeatherView$1;->this$0:Lcom/android/systemui/statusbar/WeatherView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/systemui/statusbar/WeatherView$1;->this$0:Lcom/android/systemui/statusbar/WeatherView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/WeatherView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_1a

    move-object v2, v0

    :goto_1b

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/WeatherView;->setText(Ljava/lang/CharSequence;)V

    .line 26

    return-void

.end method

