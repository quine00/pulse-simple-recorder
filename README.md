# A recorder application using Pulseaudio

Used for testing the microphone permission prompting feature in snapd 2.75+.

# How to test

```
snapcraft pack
sudo snap install pulse-simple-recorder_0.1_amd64.snap --dangerous
sudo snap connect pulse-simple-recorder:pulseaudio :pulseaudio
sudo snap connect pulse-simple-recorder:audio-record :audio-record
./record.sh
```

You should hear your voice after a delay through the default audio sink.