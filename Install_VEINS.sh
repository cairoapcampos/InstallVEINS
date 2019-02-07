#!/bin/bash

######################################################
# Script de Instalação do VEINS                      #
# Versão: 1.0                                        #
######################################################

clear

echo
echo "Atualizando lista de pacotes: "
sleep 3
echo

# Atualizar lista de softwares disponiveis nos repositórios
sudo apt update
clear

echo
echo "Instalando pacotes necessários:"
sleep 3

echo
# Instalação dos pacotes necessários
sudo apt install -y build-essential gcc g++ bison flex perl tcl-dev tk-dev blt libxml2-dev zlib1g-dev default-jre \
doxygen graphviz libwebkitgtk-1.0-0 openmpi-bin libopenmpi-dev libpcap-dev autoconf automake libtool libproj-dev \
libgdal1-dev libfox-1.6-dev libgdal-dev libxerces-c-dev qt4-dev-tools python python3 qt5-default libqt5opengl5-dev default-jre
clear

echo
# Adicionar repositório do SUMO e instalá-lo
echo "######################################"
echo "###        Instalando o SUMO       ###"
echo "######################################"
echo
sleep 3
echo
sudo add-apt-repository -y ppa:sumo/stable
echo
sudo apt update
echo
sudo apt install -y sumo sumo-tools sumo-doc
clear

echo
# Adicionar repositório  Qtenv para visualizações em 3D
echo "Instalando o Qtenv para visualizações em 3D: "
sleep 3
echo
sudo add-apt-repository -y ppa:ubuntugis/ppa
echo
sudo apt update
echo
sudo apt install -y openscenegraph-plugin-osgearth libosgearth-dev
clear

echo
echo "Criando o diretório: $HOME/src"
echo
mkdir $HOME/src
clear

echo
cd $HOME/src
# Baixar e compilar o  OMNET++
echo "######################################"
echo "###       Instalando o OMNET++     ###"
echo "######################################"
echo
wget -c https://ipfs.omnetpp.org/release/5.3/omnetpp-5.3-src-linux.tgz
echo
tar -xvzf omnetpp-5.3-src-linux.tgz
rm omnetpp-5.3-src-linux.tgz
echo " " >> ~/.bashrc
echo "export PATH=$PATH:$HOME/src/omnetpp-5.3/bin" >> ~/.bashrc
source ~/.bashrc
./configure
make
echo "Adicionando atalhos do OMNET++"
echo
make install-menu-item
make install-desktop-icon
echo "Atalhos adicionados!"
sleep 3
clear

echo
cd $HOME/src
# Baixar o VEINS
echo "Fazendo o download do VEINS:"
echo
wget -c https://veins.car2x.org/download/veins-4.7.1.zip
echo
unzip veins-4.7.1.zip
rm veins-4.7.1.zip
clear

echo "Movendo icone e script de proxy VEINS"
sleep 3
cd $HOME/Downloads/Install_VEINS  
sudo mv  StartProxyPort.sh $HOME/src/veins-veins-4.7.1
sudo mv  StartProxyPort.xpm $HOME/src/veins-veins-4.7.1
sudo mv  StartProxyPort.desktop /usr/share/applications
sudo chmod +x  $HOME/src/veins-veins-4.7.1/StartProxyPort.sh
sleep 3
clear


echo ""
echo "Instalação Finalizada :)"
echo ""
