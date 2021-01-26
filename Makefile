
build: patch-juce patch-eq
	cd external/android-audio-plugin-framework/java && ./gradlew publishToMavenLocal
	./gradlew build
	mkdir -p release-builds
	cp ./app/build/outputs/apk/release/app-release-unsigned.apk release-builds/witte-eq-release-unsigned.apk


patch-juce: .stamp-juce

.stamp-juce:
	cd external/Eq/JUCE && patch -i ../../aap-juce/JUCE-support-Android-CMake.patch -p1
	touch .stamp-juce


patch-eq: .stamp-eq

.stamp-eq:
	cd external/Eq && patch -i ../../witte-eq-aap.patch -p1
	touch .stamp-eq

