#!/bin/bash

set -euo pipefail

snap run pulse-simple-recorder.record | aplay -D pipewire -f S16_LE -c 2 -r 44100
