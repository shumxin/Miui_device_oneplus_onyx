.class public abstract Lcom/android/internal/app/IVoiceInteractor$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractor.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceInteractor"

.field static final TRANSACTION_startAbortVoice:I = 0x4

.field static final TRANSACTION_startCommand:I = 0x5

.field static final TRANSACTION_startCompleteVoice:I = 0x3

.field static final TRANSACTION_startConfirmation:I = 0x1

.field static final TRANSACTION_startPickOption:I = 0x2

.field static final TRANSACTION_supportsCommands:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.internal.app.IVoiceInteractor"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.android.internal.app.IVoiceInteractor"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/internal/app/IVoiceInteractor;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "com.android.internal.app.IVoiceInteractor"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.android.internal.app.IVoiceInteractor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    move-result-object v2

    .line 56
    .local v2, "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/VoiceInteractor$Prompt;

    .line 63
    .local v3, "_arg2":Landroid/app/VoiceInteractor$Prompt;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 69
    .local v4, "_arg3":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startConfirmation(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v6

    .line 70
    .local v6, "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v8

    .line 72
    goto :goto_0

    .line 60
    .end local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v6    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    goto :goto_1

    .line 67
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/Bundle;
    goto :goto_2

    .restart local v6    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_2
    move-object v0, v7

    .line 71
    goto :goto_3

    .line 76
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v6    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :sswitch_2
    const-string v0, "com.android.internal.app.IVoiceInteractor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    move-result-object v2

    .line 82
    .restart local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    sget-object v0, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/VoiceInteractor$Prompt;

    .line 89
    .restart local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    :goto_4
    sget-object v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 91
    .local v4, "_arg3":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, "_arg4":Landroid/os/Bundle;
    :goto_5
    move-object v0, p0

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startPickOption(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v6

    .line 98
    .restart local v6    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v6, :cond_3

    invoke-interface {v6}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v8

    .line 100
    goto/16 :goto_0

    .line 86
    .end local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .end local v4    # "_arg3":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    goto :goto_4

    .line 95
    .restart local v4    # "_arg3":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/Bundle;
    goto :goto_5

    .line 104
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .end local v4    # "_arg3":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :sswitch_3
    const-string v0, "com.android.internal.app.IVoiceInteractor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    move-result-object v2

    .line 110
    .restart local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    sget-object v0, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/VoiceInteractor$Prompt;

    .line 117
    .restart local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 118
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 123
    .local v4, "_arg3":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startCompleteVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v6

    .line 124
    .restart local v6    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v6, :cond_6

    invoke-interface {v6}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v8

    .line 126
    goto/16 :goto_0

    .line 114
    .end local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v6    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    goto :goto_6

    .line 121
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/Bundle;
    goto :goto_7

    .line 130
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    :sswitch_4
    const-string v0, "com.android.internal.app.IVoiceInteractor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    move-result-object v2

    .line 136
    .restart local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 137
    sget-object v0, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/VoiceInteractor$Prompt;

    .line 143
    .restart local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 144
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 149
    .restart local v4    # "_arg3":Landroid/os/Bundle;
    :goto_9
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startAbortVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v6

    .line 150
    .restart local v6    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v6, :cond_9

    invoke-interface {v6}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v8

    .line 152
    goto/16 :goto_0

    .line 140
    .end local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v6    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    goto :goto_8

    .line 147
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/Bundle;
    goto :goto_9

    .line 156
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    :sswitch_5
    const-string v0, "com.android.internal.app.IVoiceInteractor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    move-result-object v2

    .line 162
    .restart local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 165
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 170
    .restart local v4    # "_arg3":Landroid/os/Bundle;
    :goto_a
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startCommand(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v6

    .line 171
    .restart local v6    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v6, :cond_c

    invoke-interface {v6}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :cond_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v8

    .line 173
    goto/16 :goto_0

    .line 168
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v6    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_d
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/Bundle;
    goto :goto_a

    .line 177
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    :sswitch_6
    const-string v0, "com.android.internal.app.IVoiceInteractor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractor$Stub;->supportsCommands(Ljava/lang/String;[Ljava/lang/String;)[Z

    move-result-object v6

    .line 183
    .local v6, "_result":[Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    move v0, v8

    .line 185
    goto/16 :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
