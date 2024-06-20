sudo apt update

# Config git global
sudo git config --global usre.email "lpl212757@gmail.com"
sudo git config --global user.name "Loc Le"
sudo git config --global credential.helper store

# Install lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
sudo rm -rf lazygit.tar.gz
sudo rm -rf lazygit
lazygit --version

# Install ubuntu driver
sudo DEBIAN_FRONTEND=noninteractive apt install ubuntu-drivers-common -y

# Install NodeJS
sudo apt update
sudo DEBIAN_FRONTEND=noninteractive apt install nodejs -y
node -v
sudo DEBIAN_FRONTEND=noninteractive apt install npm -y

# Install python3
sudo DEBIAN_FRONTEND=noninteractive apt install python3 -y
sudo DEBIAN_FRONTEND=noninteractive apt install python3-pip -y

# Install conda
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh

# Install Docker
sudo apt update
sudo DEBIAN_FRONTEND=noninteractive apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
apt-cache policy docker-ce
sudo DEBIAN_FRONTEND=noninteractive apt install docker-ce -y
sudo systemctl status docker

# Config permission for Docker
sudo usermod -a -G docker $USER
newgrp docker

# Install unzip
sudo apt install unzip

# Install Neo4vim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
sudo rm -rf nvim-linux64.tar.gz
echo "export PATH=\"\$PATH:/opt/nvim-linux64/bin\"" >> ~/.bashrc
export PATH="$PATH:/opt/nvim-linux64/bin"

git clone https://github.com/lpl212757/NVChad ~/.config/nvim

# Start nvim
nvim
