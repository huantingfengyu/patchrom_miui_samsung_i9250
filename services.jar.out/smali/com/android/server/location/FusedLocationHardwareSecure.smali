.class public Lcom/android/server/location/FusedLocationHardwareSecure;
.super Landroid/hardware/location/IFusedLocationHardware$Stub;
.source "FusedLocationHardwareSecure.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

.field private final mPermissionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/location/IFusedLocationHardware;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "locationHardware"
    .parameter "context"
    .parameter "permissionId"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    .line 39
    iput-object p2, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mContext:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mPermissionId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private checkPermissions()V
    .locals 6

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mPermissionId:Ljava/lang/String;

    const-string v2, "Permission \'%s\' not granted to access FusedLocationHardware"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mPermissionId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getSupportedBatchSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    .line 66
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0}, Landroid/hardware/location/IFusedLocationHardware;->getSupportedBatchSize()I

    move-result v0

    return v0
.end method

.method public injectDeviceContext(I)V
    .locals 1
    .parameter "deviceEnabledContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    .line 117
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->injectDeviceContext(I)V

    .line 118
    return-void
.end method

.method public injectDiagnosticData(Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    .line 105
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->injectDiagnosticData(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 1
    .parameter "eventSink"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    .line 54
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V

    .line 55
    return-void
.end method

.method public requestBatchOfLocations(I)V
    .locals 1
    .parameter "batchSizeRequested"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    .line 93
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->requestBatchOfLocations(I)V

    .line 94
    return-void
.end method

.method public startBatching(ILandroid/location/FusedBatchOptions;)V
    .locals 1
    .parameter "id"
    .parameter "batchOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    .line 72
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IFusedLocationHardware;->startBatching(ILandroid/location/FusedBatchOptions;)V

    .line 73
    return-void
.end method

.method public stopBatching(I)V
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    .line 78
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->stopBatching(I)V

    .line 79
    return-void
.end method

.method public supportsDeviceContextInjection()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    .line 111
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0}, Landroid/hardware/location/IFusedLocationHardware;->supportsDeviceContextInjection()Z

    move-result v0

    return v0
.end method

.method public supportsDiagnosticDataInjection()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    .line 99
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0}, Landroid/hardware/location/IFusedLocationHardware;->supportsDiagnosticDataInjection()Z

    move-result v0

    return v0
.end method

.method public unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 1
    .parameter "eventSink"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    .line 60
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V

    .line 61
    return-void
.end method

.method public updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    .locals 1
    .parameter "id"
    .parameter "batchoOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    .line 87
    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IFusedLocationHardware;->updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V

    .line 88
    return-void
.end method
