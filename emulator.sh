no | ${ANDROID_HOME}/tools/bin/avdmanager --verbose create avd --force --name 'TestAVD' --package 'system-images;android-${{ inputs.api-version }};google_apis;x86' --abi 'x86'
${ANDROID_HOME}/tools/emulator -list-avds
${ANDROID_HOME}/tools/emulator @TestAVD -wipe-data -no-audio -no-window