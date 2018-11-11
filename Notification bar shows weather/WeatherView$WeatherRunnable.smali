.class Lcom/android/systemui/statusbar/WeatherView$WeatherRunnable;

.super Ljava/lang/Object;

.source "WeatherView.java"

# interfaces

.implements Ljava/lang/Runnable;

# annotations

.annotation system Ldalvik/annotation/EnclosingClass;

    value = Lcom/android/systemui/statusbar/WeatherView;

.end annotation

.annotation system Ldalvik/annotation/InnerClass;

    accessFlags = 0x2

    name = "WeatherRunnable"

.end annotation

# instance fields

.field final synthetic this$0:Lcom/android/systemui/statusbar/WeatherView;

# direct methods

.method private constructor <init>(Lcom/android/systemui/statusbar/WeatherView;)V

    .registers 2

    .line 53

    iput-object p1, p0, Lcom/android/systemui/statusbar/WeatherView$WeatherRunnable;->this$0:Lcom/android/systemui/statusbar/WeatherView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/WeatherView;Lcom/android/systemui/statusbar/WeatherView$1;)V

    .registers 3

    .param p1, "x0"    # Lcom/android/systemui/statusbar/WeatherView;

    .param p2, "x1"    # Lcom/android/systemui/statusbar/WeatherView$1;

    .line 53

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/WeatherView$WeatherRunnable;-><init>(Lcom/android/systemui/statusbar/WeatherView;)V

    return-void

.end method

# virtual methods

.method public run()V

    .registers 10

    .line 57

    const-string v0, ""

    .line 59

    .local v0, "build":Ljava/lang/String;

    const/16 v1, 0x64

    :try_start_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/WeatherView$WeatherRunnable;->this$0:Lcom/android/systemui/statusbar/WeatherView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/WeatherView;->access$200(Lcom/android/systemui/statusbar/WeatherView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/statusbar/WeatherView;->access$100()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 60

    .local v2, "query":Landroid/database/Cursor;

    if-eqz v2, :cond_6b

    .line 61

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 62

    const-string v3, "city_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 63

    .local v3, "cityName":Ljava/lang/String;

    const-string v4, "description"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 64

    .local v4, "description":Ljava/lang/String;

    const-string v5, "temperature"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 65

    .local v5, "temperature":Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 67

    .end local v3    # "cityName":Ljava/lang/String;

    .end local v4    # "description":Ljava/lang/String;

    .end local v5    # "temperature":Ljava/lang/String;

    :cond_5d

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :try_end_60

    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_60} :catch_63

    .catchall {:try_start_4 .. :try_end_60} :catchall_61

    .line 67

    .end local v2    # "query":Landroid/database/Cursor;

    goto :goto_6b

    .line 72

    :catchall_61

    move-exception v2

    goto :goto_84

    .line 69

    :catch_63

    move-exception v2

    .line 70

    .local v2, "e":Ljava/lang/IllegalArgumentException;

    :try_start_64

    iget-object v3, p0, Lcom/android/systemui/statusbar/WeatherView$WeatherRunnable;->this$0:Lcom/android/systemui/statusbar/WeatherView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/WeatherView;->access$300(Lcom/android/systemui/statusbar/WeatherView;)Ljava/lang/String;

    move-result-object v3

    :try_end_6a

    .catchall {:try_start_64 .. :try_end_6a} :catchall_61

    move-object v0, v3

    .line 72

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;

    :cond_6b

    :goto_6b

    iget-object v2, p0, Lcom/android/systemui/statusbar/WeatherView$WeatherRunnable;->this$0:Lcom/android/systemui/statusbar/WeatherView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/WeatherView;->access$400(Lcom/android/systemui/statusbar/WeatherView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 73

    .local v2, "message":Landroid/os/Message;

    iput v1, v2, Landroid/os/Message;->what:I

    .line 74

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75

    iget-object v1, p0, Lcom/android/systemui/statusbar/WeatherView$WeatherRunnable;->this$0:Lcom/android/systemui/statusbar/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/WeatherView;->access$400(Lcom/android/systemui/statusbar/WeatherView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76

    .end local v2    # "message":Landroid/os/Message;

    nop

    .line 77

    return-void

    .line 72

    :goto_84

    iget-object v3, p0, Lcom/android/systemui/statusbar/WeatherView$WeatherRunnable;->this$0:Lcom/android/systemui/statusbar/WeatherView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/WeatherView;->access$400(Lcom/android/systemui/statusbar/WeatherView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 73

    .local v3, "message":Landroid/os/Message;

    iput v1, v3, Landroid/os/Message;->what:I

    .line 74

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75

    iget-object v1, p0, Lcom/android/systemui/statusbar/WeatherView$WeatherRunnable;->this$0:Lcom/android/systemui/statusbar/WeatherView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/WeatherView;->access$400(Lcom/android/systemui/statusbar/WeatherView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76

    .end local v3    # "message":Landroid/os/Message;

    throw v2

.end method

