Control your mouse with face tracking in Linux

[osf-mouse.py](osf-mouse.py) is [facetracking.py](facetracking.py) from [OpenSeeFace](https://github.com/emilianavt/OpenSeeFace) with added functionality and removed Windows features. [osf-mouse.sh](osf-mouse.sh) is a script that might be helpful. The rest of this repo is identicle to OpenSeeFace and exists in case future updates to OpenSeeFace break the functionallity of osf-mouse.py. Until then you can use the official repo with osf-mouse.py.

# Usage
xdotool is required.
See osf-mouse.sh for an exmple.
`-s 2` enables the mouse control

# Recommendations:
Fixed framerate like `-F 30`
Low model quality. `--model -1` if blink detection isn't needed

See line 210 for parameter tuning

# osf-mouse.sh
osf-mouse.sh is a little script for taking the camera input and creating a new camera device, which is then used as input for facetracker.py. If Ctrl-C is pressed often enough ffmpeg should have also stopped. The new camera is needed because with the original camera the update rate is half of the framerate.

Dependency for osf-mouse.sh: v4l2loopback & ffmpeg
