#!/bin/bash
#GPU
nvidia-smi -mig 1
nvidia-smi mig -cgi 0 -C
#Python Virtual Env
sudo apt install python3.8-venv
sudo apt install git-lfs
python3 -m venv llmenv
#Python Package Install
llmenv/bin/pip install jupyter
llmenv/bin/pip install scipy
llmenv/bin/pip install scikit-learn
llmenv/bin/pip install torch==2.0.0+cu118 torchvision==0.15.1+cu118 torchaudio==2.0.1 --index-url https://download.pytorch.org/whl/cu118
llmenv/bin/pip install git+https://github.com/huggingface/transformers
llmenv/bin/pip install -q accelerate==0.21.0 peft==0.4.0 bitsandbytes==0.41.1 trl==0.4.7
llmenv/bin/pip install -q -U datasets
llmenv/bin/pip install -q -U einops
llmenv/bin/pip install -q -U wandb
llmenv/bin/pip install -q -U evaluate
