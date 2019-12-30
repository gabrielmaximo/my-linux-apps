#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update && 

## Instalando pacotes e programas do repositório deb do Ubuntu ##

sudo apt install curl docker docker-compose git build-essential libssl-dev flatpak gnome-software-plugin-flatpak -y &&

## falta instalar:
## MongoDB Compass Community, Stremio, Zoom, ZSH, OhMyZsh

## Instalando pacotes Snap ##
sudo snap install code --classic &&  
sudo snap install node --chanel=8 --classic && 
sudo snap install intellij-idea-ultimate --classic &&
sudo snap install insomnia &&  
sudo snap install spotify &&
sudo snap install postbird &&
sudo snap install discord &&
sudo snap install whatsdesk &&
sudo snap install telegram-desktop &&

curl https://github.com/egoist/devdocs-app/releases/download/v0.6.9/DevDocs_0.6.9_amd64.deb &&
apt install ./DevDocs_0.6.9_amd64.deb -y &&
sudo add-apt-repository multiverse &&
sudo apt install steam &&

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - &&
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list &&

sudo apt install yarn -y &&
 
wget "https://dl.strem.io/linux/v4.4.54/stremio_4.4.52-1_amd64.deb" -O stremio.appimage &&
chmod +x stremio.appimage &&
sudo apt install ./stremio.appimage -y &&

## Softwares que precisam de download externo ##

cd ~/Downloads/ && wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i *.deb && wget -c https://uploads.treeunfe.me/downloads/instalar-freenfe.exe &&

## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"