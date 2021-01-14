This is an experimental port of [witte/Eq](https://github.com/witte/Eq) to [aap-juce](https://github.com/atsushieno/aap-juce).

It is not a typical aap-juce project in that it is based on CMake, which is NOT supported by JUCE itself. We have extended aap-juce (and patched JUCE) to expand support for CMake based projects to Android, and this project works as a dogfooding for my concept work.

To build it, you have to apply the patch to witte/Eq as well as JUCE (it is checked out as submodule of witte/Eq).

Unlike Projucer-based projects, `aap_metadata.xml` is manually created. We will have to provide some decent solution for equivalent tooling (aap-metadata-generator should work; we just need some build helper to build desktop version, link the generator entrypoint, and run it to generate `aap_metadata.xml`).
