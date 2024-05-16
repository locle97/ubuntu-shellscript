sudo apt update

# Install Neo4vim
sudo apt install neovim
git clone https://github.com/lpl212757/NVChad ~/.config/nvim

# Install ubuntu driver
sudo apt install ubuntu-drivers-common

# Install python3
sudo apt install python3
sudo apt install python3-pip

# Install conda
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh

nvim
