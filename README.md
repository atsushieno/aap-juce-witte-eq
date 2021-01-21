This is an experimental port of [witte/Eq](https://github.com/witte/Eq) to [aap-juce](https://github.com/atsushieno/aap-juce).

It is not a typical aap-juce project in that it is based on CMake, which is NOT supported by JUCE itself. We have extended aap-juce (and patched JUCE) to expand support for CMake based projects to Android, and this project works as a dogfooding for our concept work.

To build it, you have to apply the patch to witte/Eq as well as JUCE (it is checked out as submodule of witte/Eq).

Unlike Projucer-based projects, `aap_metadata.xml` is manually created. We will have to provide some decent solution for equivalent tooling (aap-metadata-generator should work; we just need some build helper to build desktop version, link the generator entrypoint, and run it to generate `aap_metadata.xml`).

# Build Instruction

For initial setup, `make` applies the patches to the plugin and JUCE.
It is also used by CI builds. Once it's done, iterative development build works.

For iterative development, use Android Studio. Or `./gradlew assembleDebug`
(or `./gradlew build`) is the command to perform.

# Reuse this project in CMake based plugins

You will have to create the patch file against the original project, at least to add aap-juce modules.

Then, there are couple of target plugin specific bits in the code. Namely,

- `Makefile` : replace patch filename to the plugin.
- `app/CMakeLists.txt` : adjust JUCE path, the path to project subdirectory etc.
- `app/src/main/AndroidManifest.xml` : replace plugin package name.
- `app/src/main/java/com/rmsl/juce/Java.kt` : rewrite shared library name.
- `app/src/main/res/value/string.xml` : replace plugin name.
