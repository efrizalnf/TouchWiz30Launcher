.class Lcom/sec/android/app/twlauncher/Launcher$6;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;

.field final synthetic val$newScreen:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3445
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$6;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iput p2, p0, Lcom/sec/android/app/twlauncher/Launcher$6;->val$newScreen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3447
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$6;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher$6;->val$newScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    .line 3448
    return-void
.end method
