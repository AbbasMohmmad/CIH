#!/usr/bin/env bash

# command to update the system
sudo apt-get update -y

# command to insatll the htop

sudo apt-get install htop -y

# command to insatll the screen

sudo apt-get install screen -y

#check if the path already exist , if not creates a folder and then installs the miniconda 

if [ ! -d /users/amohmma/miniconda3 ]; then
     mkdir -p /users/amohmma/miniconda3
     wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
     bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
     rm -rf ~/miniconda3/miniconda.sh
else
     echo "miniconda is already exists and conda version is :"
     conda --version
fi

#check whether /path/to/miniconda/bin/conda file exists or not ,if exists then init bash 

if [ -f  /users/amohmma/miniconda3/bin/conda ]; then
    /users/amohmma/miniconda3/bin/conda init bash
else
    echo "There was issue with the installation of miniconda please try again"
fi

#lastly update the system
sudo apt-get update -y
