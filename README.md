Control your mouse with face tracking in Linux

osf-mouse.py is facetracking.py from OpenSeeFace with added functionality. The rest of this repo is identicle to OpenSeeFace and exists in case future updates to OpenSeeFace break the functionallity of osf-mouse.py. Until then you can use the official repo with osf-mouse.py.

#Usage
xdotool needed
See osf-mouse.sh
`-s 2` enables the mouse control
Recommendations:
Fixed framerate like `-F 30`
Low model quality. `--model -1` if blink detection isn't needed

osf-mouse.sh is a little script for taking the camera input and creating a new camera device, which is then used as input for facetracker.py. If Ctrl-C is pressed often enough ffmpeg should have also stopped. The new camera is needed because with the original camera the update rate is half of the framerate.

Dependency for osf-mouse.sh: v4l2loopback & ffmpeg
