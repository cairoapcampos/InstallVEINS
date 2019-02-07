#!/bin/bash

######################################################
# Script de Instalação do VEINS                      #
# Versão: 1.0                                        #
######################################################

clear

echo
# Atualizar lista de softwares disponiveis nos repositórios
echo "#########################################"
echo "###  Atualizando a lista de pacotes   ###"
echo "#########################################"
sleep 3
echo
sudo apt update
clear

echo
# Instala compiladores e bibliotecas
echo "############################################################"
echo "###  Instalando compiladores e bibliotecas necessários   ###"
echo "############################################################"
sleep 3
echo
sudo apt install -y build-essential gcc g++ bison flex perl tcl-dev tk-dev blt libxml2-dev zlib1g-dev default-jre \
doxygen graphviz libwebkitgtk-1.0-0 openmpi-bin libopenmpi-dev libpcap-dev autoconf automake libtool libproj-dev \
libgdal1-dev libfox-1.6-dev libgdal-dev libxerces-c-dev qt4-dev-tools python python3 qt5-default libqt5opengl5-dev default-jre
clear

echo
# Adicionar repositório do SUMO e instalá-lo
echo "######################################"
echo "###        Instalando o SUMO       ###"
echo "######################################"
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
echo "######################################"
echo "###        Instalando o Qtenv      ###"
echo "######################################"
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
echo "Descompactando arquivo baixado"
sleep 3
echo
tar -xvzf omnetpp-5.3-src-linux.tgz
rm omnetpp-5.3-src-linux.tgz
echo "Adicionando o caminho do OMNET ++ na variável PATH"
sleep 3
echo
echo " " >> ~/.bashrc
echo "export PATH=$PATH:$HOME/src/omnetpp-5.3/bin" >> ~/.bashrc
source ~/.bashrc
echo "Compilando o OMNET ++"
sleep 3
echo
cd omnetpp-5.3
./configure
make
#echo "Adicionando atalhos do OMNET++"
#echo
#make install-menu-item
#make install-desktop-icon
#echo "Atalhos adicionados!"
#sleep 3
#clear

#echo
#cd $HOME/src
# Baixar o VEINS
#echo "######################################"
#echo "###        Download do VEINS       ###"
#echo "######################################"
#echo
#wget -c https://veins.car2x.org/download/veins-4.7.1.zip
#echo
#unzip veins-4.7.1.zip
#rm veins-4.7.1.zip
#clear

#echo "Movendo icone e script de proxy VEINS"
#sleep 3
#cd $HOME/Downloads/Install_VEINS  
#sudo mv  StartProxyPort.sh $HOME/src/veins-veins-4.7.1
#sudo mv  StartProxyPort.xpm $HOME/src/veins-veins-4.7.1
#sudo mv  StartProxyPort.desktop /usr/share/applications
#sudo chmod +x  $HOME/src/veins-veins-4.7.1/StartProxyPort.sh
#sleep 3
#clear


#echo ""
#echo "Instalação Finalizada :)"
#echo ""
