.class public Landroid/app/ActivityManager$AppTask;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppTask"
.end annotation


# instance fields
.field private mAppTaskImpl:Landroid/app/IAppTask;


# direct methods
.method public constructor <init>(Landroid/app/IAppTask;)V
    .locals 0
    .param p1, "task"    # Landroid/app/IAppTask;

    .prologue
    .line 3090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3091
    iput-object p1, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    .line 3092
    return-void
.end method


# virtual methods
.method public finishAndRemoveTask()V
    .locals 3

    .prologue
    .line 3099
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-interface {v1}, Landroid/app/IAppTask;->finishAndRemoveTask()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3103
    :goto_0
    return-void

    .line 3100
    :catch_0
    move-exception v0

    .line 3101
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Landroid/app/ActivityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid AppTask"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 3

    .prologue
    .line 3112
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-interface {v1}, Landroid/app/IAppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3115
    :goto_0
    return-object v1

    .line 3113
    :catch_0
    move-exception v0

    .line 3114
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Landroid/app/ActivityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid AppTask"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3115
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public moveToFront()V
    .locals 3

    .prologue
    .line 3127
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-interface {v1}, Landroid/app/IAppTask;->moveToFront()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3131
    :goto_0
    return-void

    .line 3128
    :catch_0
    move-exception v0

    .line 3129
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Landroid/app/ActivityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid AppTask"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setExcludeFromRecents(Z)V
    .locals 3
    .param p1, "exclude"    # Z

    .prologue
    .line 3169
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-interface {v1, p1}, Landroid/app/IAppTask;->setExcludeFromRecents(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3173
    :goto_0
    return-void

    .line 3170
    :catch_0
    move-exception v0

    .line 3171
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Landroid/app/ActivityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid AppTask"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 3155
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    .line 3156
    .local v6, "thread":Landroid/app/ActivityThread;
    invoke-virtual {v6}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v6}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Instrumentation;->execStartActivityFromAppTask(Landroid/content/Context;Landroid/os/IBinder;Landroid/app/IAppTask;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 3158
    return-void
.end method
