#bin/sh

echo .
echo ------------------------------
echo Disabling OTA updates...
echo ------------------------------
adb wait-for-device
adb shell pm uninstall -k --user 0 com.amazon.device.software.ota
adb shell pm uninstall -k --user 0 com.amazon.kindle.otter.oobe.forced.ota
adb shell pm uninstall -k --user 0 com.amazon.settings.systemupdates

echo .
echo ------------------------------
echo Removing lockscreen ads...
echo ------------------------------
adb wait-for-device
adb shell pm uninstall -k --user 0 com.amazon.kindle.kso

echo .
echo ------------------------------
echo Debloating device...
echo ------------------------------
adb wait-for-device
adb shell pm uninstall -k --user 0 amazon.alexa.tablet
adb shell pm uninstall -k --user 0 amazon.jackson19
adb shell pm uninstall -k --user 0 com.amazon.advertisingidsettings
adb shell pm uninstall -k --user 0 com.amazon.ags.app
adb shell pm uninstall -k --user 0 com.amazon.alta.h2clientservice
adb shell pm uninstall -k --user 0 com.amazon.client.metrics
adb shell pm uninstall -k --user 0 com.amazon.csapp
adb shell pm uninstall -k --user 0 com.amazon.device.backup
adb shell pm uninstall -k --user 0 com.amazon.device.backup.sdk.internal.library
adb shell pm uninstall -k --user 0 com.amazon.device.crashmanager
adb shell pm uninstall -k --user 0 com.amazon.device.logmanager
adb shell pm uninstall -k --user 0 com.amazon.device.sync
adb shell pm uninstall -k --user 0 com.amazon.device.sync.sdk.internal
adb shell pm uninstall -k --user 0 com.amazon.dp.contacts
adb shell pm uninstall -k --user 0 com.amazon.dp.fbcontacts
adb shell pm uninstall -k --user 0 com.amazon.dp.logger
#adb shell pm uninstall -k --user 0 com.amazon.goodreads.kindle
adb shell pm uninstall -k --user 0 com.amazon.h2settingsfortablet
adb shell pm uninstall -k --user 0 com.amazon.kcp.tutorial
#adb shell pm uninstall -k --user 0 com.amazon.kindle
#adb shell pm uninstall -k --user 0 com.amazon.kindle.cms
#adb shell pm uninstall -k --user 0 com.amazon.kindle.devicecontrols
#adb shell pm uninstall -k --user 0 com.amazon.kindle.otter.settings
#adb shell pm uninstall -k --user 0 com.amazon.kindle.unifiedSearch
adb shell pm uninstall -k --user 0 com.amazon.legalsettings
adb shell pm uninstall -k --user 0 com.amazon.logan
adb shell pm uninstall -k --user 0 com.amazon.ods.kindleconnect
adb shell pm uninstall -k --user 0 com.amazon.parentalcontrols
adb shell pm uninstall -k --user 0 com.amazon.platform
adb shell pm uninstall -k --user 0 com.amazon.pm
adb shell pm uninstall -k --user 0 com.amazon.precog
adb shell pm uninstall -k --user 0 com.amazon.readynowcore
adb shell pm uninstall -k --user 0 com.amazon.recess
adb shell pm uninstall -k --user 0 com.amazon.socialplatform
adb shell pm uninstall -k --user 0 com.amazon.unifiedsharefacebook
adb shell pm uninstall -k --user 0 com.amazon.unifiedsharegoodreads
adb shell pm uninstall -k --user 0 com.amazon.unifiedsharesinaweibo
adb shell pm uninstall -k --user 0 com.amazon.unifiedsharetwitter
adb shell pm uninstall -k --user 0 com.amazon.vans.alexatabletshopping.app
adb shell pm uninstall -k --user 0 com.amazon.webapp
#adb shell pm uninstall -k --user 0 com.amazon.whisperlink.activityview.android
#adb shell pm uninstall -k --user 0 com.amazon.whisperlink.core.android
#adb shell pm uninstall -k --user 0 com.amazon.whisperplay.contracts


echo .
echo ------------------------------
echo Removing apps...
echo ------------------------------
adb wait-for-device
adb shell pm uninstall -k --user 0 com.amazon.avod # Video, Games
adb shell pm uninstall -k --user 0 com.amazon.calculator
adb shell pm uninstall -k --user 0 com.amazon.cloud9 # Silk Browser
adb shell pm uninstall -k --user 0 com.amazon.cloud9.contentservice
adb shell pm uninstall -k --user 0 com.amazon.cloud9.kids
adb shell pm uninstall -k --user 0 com.amazon.cloud9.systembrowserprovider
adb shell pm uninstall -k --user 0 com.amazon.dee.app # Alexa
adb shell pm uninstall -k --user 0 com.amazon.geo.client.maps # Maps
adb shell pm uninstall -k --user 0 com.amazon.geo.mapsv2
adb shell pm uninstall -k --user 0 com.amazon.geo.mapsv2.services
adb shell pm uninstall -k --user 0 com.amazon.kindle.personal_video # My Videos
adb shell pm uninstall -k --user 0 com.amazon.mp3
adb shell pm uninstall -k --user 0 com.amazon.photos
adb shell pm uninstall -k --user 0 com.amazon.photos.importer
adb shell pm uninstall -k --user 0 com.amazon.tahoe # FreeTime
adb shell pm uninstall -k --user 0 com.amazon.venezia # Appstore
adb shell pm uninstall -k --user 0 com.amazon.weather
adb shell pm uninstall -k --user 0 com.amazon.windowshop # Shop Amazon
adb shell pm uninstall -k --user 0 com.amazon.zico # Docs
adb shell pm uninstall -k --user 0 com.android.calendar
adb shell pm uninstall -k --user 0 com.android.contacts
adb shell pm uninstall -k --user 0 com.android.deskclock
adb shell pm uninstall -k --user 0 com.android.downloads.iu
adb shell pm uninstall -k --user 0 com.android.email
adb shell pm uninstall -k --user 0 com.android.music
#adb shell pm uninstall -k --user 0 com.audible.application.kindle
adb shell pm uninstall -k --user 0 com.goodreads.kindle
adb shell pm uninstall -k --user 0 com.here.odnp.service
adb shell pm uninstall -k --user 0 com.kingsoft.office.amz
adb shell pm uninstall -k --user 0 org.mopria.printplugin

echo .
echo ------------------------------
echo Installing Google Play...
echo ------------------------------
adb wait-for-device
cd google
adb install com.google.android.gsf.login.apk
adb install com.google.android.gsf.apk
adb install com.google.android.gms.apk
adb install com.android.vending.apk
