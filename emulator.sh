${ANDROID_HOME}/tools/bin/sdkmanager --update
${ANDROID_HOME}/tools/bin/sdkmanager --install 'system-images;android-30;google_apis;x86_64'
echo no | ${ANDROID_HOME}/tools/bin/avdmanager create avd --force -n 'TestAVD' -k 'system-images;android-30;google_apis;x86_64' -d pixel_c
${ANDROID_HOME}/tools/emulator -list-avds
${ANDROID_HOME}/tools/emulator @TestAVD -netdelay none -no-snapshot -wipe-data -no-audio -no-window &

echo "Waiting Emulator"
WAIT_CMD="${ANDROID_HOME}/platform-tools/adb wait-for-device shell getprop init.svc.bootanim"
until $WAIT_CMD | grep -m 1 stopped; do 
  echo -n "."
  sleep 1
done

echo "Unlock the Lock Screen"
${ANDROID_HOME}/platform-tools/adb shell input keyevent 82