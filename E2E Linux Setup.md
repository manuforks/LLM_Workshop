# E2E Linux Setup for Stable Diffusion

Tested using V100 GPUs and Ubuntu 22.04
## Run as root user
Create ubuntu user since A1111 setup does not run as root user

```
adduser ubuntu
usermod -aG sudo ubuntu
```
## Run as ubuntu user

```
mkdir git
cd ~/git/
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
cd stable-diffusion-webui/
rm -rf venv
sudo apt install python3-venv libtcmalloc-minimal4
./webui.sh --xformers --enable-insecure-extension-access --share
```

Tested using A1111 commit hash: c9c8485bc1e8720aba70f029d25cba1c4abf2b5c
### Tips to use A1111 setup
- Use shared link to avoid security issues with ports
- Extensions such as controlnet and dreambooth can be done using UI


use --disable-nan-check to check for black image issues

Models checkpoints to be downloaded 

ControlNet - Openpose - https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_openpose.pth
ControlNet - Canny - https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_canny.pth
InstructPix2Pix - https://huggingface.co/timbrooks/instruct-pix2pix/resolve/main/instruct-pix2pix-00-22000.ckpt
If needed - RealisticVision - https://civitai.com/api/download/models/130072




