cd Unique3D

#install torch
pip install torch==2.1.0 --index-url https://download.pytorch.org/whl/cu121
pip install -r requirements.txt
pip install xformers torch==2.1.0+cu121

# update package
apt-get update -y
apt-get install -y libgl1
# apt-get install -y libgl1-mesa-glx libglib2.0-0 zip libxrender1 libxkbcommon-x11-0 libegl1-mesa-dev libgl1-mesa-glx libgl1

# evaluation kit
pip install git+https://github.com/JaeSungPak/kiuikit
pip install huggingface-hub==0.25.1 datasets==2.20.0 lpips ninja torch==2.1.0+cu121 diffusers==0.27.2
