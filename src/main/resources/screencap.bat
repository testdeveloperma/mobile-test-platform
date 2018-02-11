adb shell screencap -p /sdcard/%1.png
adb pull /sdcard/%1.png %2
adb shell rm /sdcard/%1.png