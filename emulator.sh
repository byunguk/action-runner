${ANDROID_HOME}/tools/bin/sdkmanager --list
no | ${ANDROID_HOME}/tools/bin/avdmanager --verbose create avd --force --name 'TestAVD' --package 'system-images;android-30;google_apis;x86_64'
${ANDROID_HOME}/tools/emulator -list-avds
${ANDROID_HOME}/tools/emulator @TestAVD -wipe-data -no-audio -no-window