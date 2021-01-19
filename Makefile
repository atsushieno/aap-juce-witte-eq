
build: .stamp-juce .stamp-eq
	cd external/android-audio-plugin-framework/java && ./gradlew publishToMavenLocal
	./gradlew build

.stamp-juce:
	cd external/Eq/JUCE && patch -i ../../aap-juce/JUCE-support-Android-CMake.patch -p1
	touch .stamp-juce

.stamp-eq:
	cd external/Eq && patch -i ../../witte-eq-aap.patch -p1
	touch .stamp-eq

