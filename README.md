# Downgrade and Debloat Amazon Fire 7
One click script for de-Amazonifying Amazon Fire tablets

## What it does
This script is intended as a means to quickly and easily set up an out-of-the-package Amazon Fire tablet. Be warned, the FireLauncher *is crippled by this script* - several things about it will no longer work. You get an alternative launcher, though, and you can always go back via a factory reset. Here's what you get:
* OTA Updates are blocked
* Lockscreen ads are removed
* Functional Google Play Store and Google Go search are installed
* Bloatware is removed from the tablet
* Functional Nova Launcher, Adblocker (DNS66) and light Youtube Client (NewPipe) are installed

Keep in mind this is only tested with an Amazon Fire 7 (2017 / 7th gen) on OS version 5.4.0.0 and 5.4.0.1 via Windows 10 & Mac OS X High Sierra. It should work on other Amazon tablet types, too. **It will not work on any version above** and there are better tools available for OS versions below v5.3.2.1 (= root).

## Prequisites (Windows)
This script expects [adb](https://adb.clockworkmod.com/) to be setup on your system and [Amazon Fire drivers](https://s3.amazonaws.com/android-sdk-manager/redist/kindle_fire_usb_driver.zip) to be installed. A more in depth explanation & troubleshooting [is found here](https://developer.amazon.com/de/docs/fire-tablets/ft-set-up-your-kindle-fire-tablet-for-testing.html#enable-adb-on-your-fire-tablet).

## Prequisites (Mac)
Intall the platform tools [manually](https://developer.android.com/studio/releases/platform-tools.html)
or through the homebrew: `brew cask install android-platform-tool`. A more in depth explanation & troubleshooting [is found here](https://developer.amazon.com/de/docs/fire-tablets/ft-set-up-your-kindle-fire-tablet-for-testing.html#enable-adb-on-your-fire-tablet).


## Out-of-the-package instructions
So, here's what you do, step by step.
* Power on your Fire tablet, do the initial setup. **DO NOT CONNECT TO WIFI**. Instead, select any password protected wifi, then cancel, and initial setup will let you continue without internet.
* Enter `Settings` -> `Device options` -> click `Serial` 7 times. A new menu entrypoint called `Developer options` will pop up.
* In `Developer options`, `enable ADB`, then connect your tablet to your computer. Confirm the fingerprint. If that didn't work, look [here](https://developer.amazon.com/de/docs/fire-tablets/ft-set-up-your-kindle-fire-tablet-for-testing.html#enable-adb-on-your-fire-tablet) for troubleshooting.
*  If on 5.4.0.1, Download Fire 7th Generation OS 5.4.0.0 [here](https://fireos-tablet-src.s3.amazonaws.com/T0d9JQEVMMnbK0kIAcFJMOfUqo/update-kindle-55.5.7.9_user_579225620.bin)
* Reboot to safe mode by holding down power and volume down button -> `apply update from ADB` (volume to select, power to enter)
* Connect Kindle via USB, open terminal in folder containing firmware, enter the command: `adb sideload update-kindle-55.5.7.9_user_579225620.bin` Reboot when complete.
* Now, extract the contents of this package somewhere on your computer and double click `FireOneClick.bat` (Windows) or start `FireOneclick.sh` (Mac).
* You can watch how Amazon's apps vanish, but it is recommended not to do anything else with your tablet while the script does its work.
* After it's finished, enter `Settings` -> `Accesibility` -> enable `To detect home button press`. Then, open the `LauncherHijack` app and select `Nova Launcher`.
* Open the `DNS66` app and start it. This will run in background (at low memory consumption) and block ads.
* Alternatively, the script `DebloatKindle.sh` will retain the functionality of the kindle app (I actually bought this tablet to read books, surprise surprise).  It also separates the stock apps into a different section with comments describing what they are.  Comment out any line for an app you want to keep before running the script.

## Notes
Several things you may need to know:
* This is not root, and it's also not a proper launcher replacement. It is very close, though. At times the FireLauncher may shortly (less than 1sec) show up on the screen when the HOME button is pressed.
* You can further customize this script to your needs by putting more apps inside the `apk` folder. Everything inside that folder will be auto-installed. You can also remove stuff from there, of course.
* There may be some error messages when running this script - ignore them. The script may try to remove packages from your Fire 7 that don't exist on your device.
* Amazon account setup is deliberately left functional, so you can still change the name of your tablet. The Amazon account will not be used in the current state of your tablet.
* Other than [savvytechwinner's work](https://forum.xda-developers.com/amazon-fire/general/amazon-fire-utility-tool-bloat-removal-t3641151), this will leave `Clock`, `Calculator`, `Email` and `Calendar` functional. Personal choice here, I don't consider that bloat.
* Widgets will not work. The original script had a supposed workaround that never worked for me, so I left it out. Widgets are not recommended on 1GB RAM devices anyways ¯\\_(ツ)_/¯.
* Stuff like that is normally supposed to void your warranty. Here you can go back any time via a factory reset. Still, **I'm not responsible for anything that may go wrong using this script**. You're on your own here.

## Credits
Most of this is not my own work, but rather a remix / improvement of other peoples work. Thanks go to the following people:
* [savvytechwinner](https://forum.xda-developers.com/amazon-fire/general/amazon-fire-utility-tool-bloat-removal-t3641151) and [Wicki](https://www.android-hilfe.de/forum/amazon-fire.2359/amazon-fire-namensgebung.839052-page-2.html) - this script is based on their work
* Google, for providing the Play Store and the Google Go search app
* [Julian Klode](https://github.com/julian-klode/dns66) for DNS66
* [Team NewPipe](https://github.com/TeamNewPipe/NewPipe) for NewPipe
* [TeslaCoil Software](https://play.google.com/store/apps/details?id=com.teslacoilsw.launcher&hl=de) for Nova Launcher
* [BaronKiko](https://github.com/BaronKiko/LauncherHijack) for Launcher Hijack
