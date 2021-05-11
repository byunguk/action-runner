${ANDROID_HOME}/tools/bin/sdkmanager --list
no | ${ANDROID_HOME}/tools/bin/avdmanager --verbose create avd --force -n 'TestAVD' -k 'system-images;android-30;google_apis;x86_64' -d pixel_c
${ANDROID_HOME}/tools/emulator -list-avds
${ANDROID_HOME}/tools/emulator @TestAVD -no-boot-anim -netdelay none -no-snapshot -wipe-data -no-audio -no-window