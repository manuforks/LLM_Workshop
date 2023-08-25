# LLM_Workshop
Setting up the GPU Node

Config: A100 40 GB RAM / Ubuntu

#GPU Setup  
nvidia-smi -mig 1  
nvidia-smi mig -cgi 0 -C  


#Setting up the Virtual Environment  
sudo apt install python3.8-venv  
sudo apt install git-lfs  
python3 -m venv llmenv  


#Installing Packages  
source llmenv/bin/activate  
pip install jupyter  
pip install notebook  
pip install torch==2.0.0+cu118 torchvision==0.15.1+cu118 torchaudio==2.0.1 --index-url https://download.pytorch.org/whl/cu118  
pip install git+https://github.com/huggingface/transformers  
pip install -q accelerate==0.21.0 peft==0.4.0 bitsandbytes==0.40.2 trl==0.4.7  
pip install -q -U datasets  
pip install -q -U einops  
pip install -q -U wandb  
pip install -q -U evaluate

#Other configuration  
1. Create an account on huggingface (https://huggingface.co/)
2. Request access to the LLAMA 2 CHAT 7B Model (https://huggingface.co/meta-llama/Llama-2-7b-chat-hf ). This is the Base model we will tune for our various tasks. Please note that the review for this takes some time so please request access to this as soon as possible. 1 per group should be fine.
3. Optional: Create an account on Weights and Biases (https://wandb.ai/ )

Running Jupyter Notebook - Do this before the start of the workshop
1. Login to the Node using SSH.
   You will receive login credentials over email you have used for E2E
2. Activate the virtual env
    source llmenv/bin/activate
3. Run the jupyter server on the node
jupyter notebook --no-browser --port=9999 --allow-root  
Run a ssh tunnel on your local machine
ssh -L 8080:localhost:9999 root@<REMOTE_HOST>
You can access the jupyter interface at http:://localhost:8080
