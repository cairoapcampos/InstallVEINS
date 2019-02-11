

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

Após a instalação, para iniciar o OMNET++ via terminal, deve se abrir um novo terminal para que a variavél $PATH seja recarregada. Para iniciar o programa basta digitar o comando:

`$ omnetpp`

#### SUMO

1.Para testar o SUMO, entrar no diretório examples do VEINS:

`cd $HOME/src/veins-veins-4.7.1/examples/veins`

2.Executar os comandos: 

`sumo -c erlangen.sumo.cfg && sumo-gui -c erlangen.sumo.cfg`

Obs: Na tela aparecerá uma linha "Loading configuration... done." referente ao primeiro e ao segundo comando, em seguida aparecerá uma janela gráfica do SUMO na qual é iniciado um cronometro na simulação que vai de 0 a 1000.

#### Importar VEINS para o OMNET++

1. Para importar o projeto no OMNET++ clicar em `File > Import > General: Existing Projects` e selecionar a pasta do VEINS descompactada no diretório src. Aguardar a importação, indicada por uma barra de progresso no canto inferior do software.

2. Para que o projeto seja construído deve-se selecionar a opção `Project > Build All`. Da mesma forma do passo anteior deve-se aguardar a construção do projeto, indicada por uma barra de progresso no canto inferior do software.

### Teste de integração entre SUMO e OMNET++

1. Inicie o script StarProxyPort, ele irá imprimir `Listening on port 9999` e aguardará o início da simulação. Deixe está janela aberta.

2. No OMNeT ++ 5 IDE, para usar o cenário de demonstração do Veins, dentro da caixa `Project Explorer` deve-se clicar com o botão direito do mouse em `veins/examples/veins/omnetpp.ini` e escolher a opção `Run As> OMNeT ++ simulation`.

3. Na janela que se abrir clicar em Run para executar a simulação.



Fontes:

https://veins.car2x.org/documentation/instant-veins/

http://veins.car2x.org/tutorial/



