
build:
	if "$(ANDROID_SDK_ROOT)" == ''  ; then \
		echo "set ANDROID_SDK_ROOT environment variable." \
		exit 1 ; \
	fi
	echo "sdk.dir=$(ANDROID_SDK_ROOT)" > local.properties

