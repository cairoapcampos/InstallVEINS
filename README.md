

## Instruções de Utilização ![status](https://img.shields.io/readthedocs/pip.svg)

### Baixar Imagem ISO

1. Baixa imagem ISO do GNU/LINUX Ubuntu Minimal 16.04:

http://archive.ubuntu.com/ubuntu/dists/xenial/main/installer-amd64/current/images/netboot/mini.iso


2. No final da instalção marcar as opções:

`Utilitários de sistema padrão`

`Xubuntu minimal installation`


![Initial Screen](https://github.com/cairoapcampos/Install_VEINS/raw/master/img.png)

### Execução do Script

1. Entrar no diretório de Downloads

`$ cd $HOME/Downloads`

2. Instalar o Git

`$ sudo apt-get install -y git`

3. Fazer o download do repositório

`$ git clone https://github.com/cairoapcampos/Install_VEINS.git`

4. Entar no diretório que possui o script de instalação

`$ cd Install_VEINS`

5. Dar permissão de execução no script

`$ sudo chmod +x Install_VEINS.sh`

6. Executar o Script

`$ ./Install_VEINS.sh`


Obs: Script de instalação homologado para a versão 16.04 do GNU/Linux Ubuntu.


### Testando o ambiente

#### OMNET++

Para testar, pode-se utilizar os exemplos de simulação presentes do diretório samples do OMNET++. Abaixo testamos a simulação dyna:

1.Entrando no diretório:

`$ cd $HOME/src/omnetpp-5.3/samples/dyna`

2. Execução:

`$ ./dyna`

Obs: Por padrão, as amostras serão executadas usando as bibliotecas gráficas Tcl/Tk.

Após a instalação, para iniciar o OMNET++ via terminal, deve se abrir um novo terminal para que as variavél $PATH seja recarregada. Para iniciar o programa basta digitar o comando:

`$ omnetpp`




