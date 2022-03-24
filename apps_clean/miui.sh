#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

systemdir=$1

apps_dir="
CatchLog
Cit
com.miui.qr
com.xiaomi.macro
HybridPlatform
Joyose
mab
MiGameService
MiLink
Mipay
MiPlayClient
MiSound
MiuiDaemon
MIUIDeskClock
ModemTestBox
MSA
NextPay
PaymentService
SogouInput
VoiceAssist
VoiceTrigger
Backup
CloudBackup
MiGameCenterSDKService
MiBrowser
MiRcs
MIService
MIUIAod
MIUICalendar
MIUIGallery
MIUIMirror
MiShare
MIUIMusic
MIUIQuickSearchBox
MIUIVideo
MIUIVipService
MIUIYellowPage
aiasst_service
GmsCore
GooglePlayServicesUpdater
"

for delete_dir in $apps_dir ;do
  find $systemdir -type d -name "$delete_dir" | xargs rm -rf
done

rm -rf $1/data-app/*
