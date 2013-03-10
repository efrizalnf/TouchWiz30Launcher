.class Lcom/sec/android/app/twlauncher/AppShortcutZone$4;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AppShortcutZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V
    .locals 0
    .parameter

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 1075
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1077
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 1079
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 1081
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$000(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1085
    iget-boolean v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$000(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v4

    iget-object v5, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteApplication(Ljava/lang/String;)V

    .line 1111
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 1093
    .restart local v1       #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    const-string v2, "com.sec.android.app.dialertab"

    .line 1095
    .local v2, dialertabPackageName:Ljava/lang/String;
    iget-object v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1099
    iget-object v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1105
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$000(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v4

    iget-object v5, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0
.end method
