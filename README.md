VSS-SDK 
=======
VSS-SDK é *Suite Development Kit* que auxília na construção de um time de futebol de robôs para a categoria *IEEE Very Small Size [Soccer]*, 
o projeto é constituído de: 

> [VSS-Vision][vision]: Sistema de Visão Computacional feito com base na categoria IEEE Very Small Size [Soccer] que reconhece e rastreia a bola e os robôs em campo;

> [VSS-Simulator][simulator]: Simulador constituído de um campo e de 6 robôs nos padrões da categoria IEEE Very Small Size [Soccer];

> [VSS-Viewer][viewer]: Visualizador de estados em 3D que incorpora os ambientes gerados pelos projetos VSS-Vision e VSS-Simulator;

> [VSS-SampleStrategy][sample]: Demonstração de como utilizar nossa API e comunicar uma estratégia de jogo com o VSS-Vision e VSS-Simulator, além de como enviar comandos para robôs reais;

> [VSS-Joystick][joystick]:  Demonstração de como utilizar um controle de Playstation 3 (Dualshock 3) para comunicar-se com o VSS-Simulator ou com robôs reais;



Instalação
----------
```
$ cd VSS-SDK
$ sudo chmod 770 configure.sh
$ sudo chmod 770 run.sh
$ sudo chmod 770 update.sh
$ ./configure.sh
```
> Implementada e testada para Ubuntu 16.04

> Implementada para Ubuntu 14.04

> TODO: Implementar para Debian, Fedora, Mint e Raspbian



Rodando
-------
Ver [MANUAL.md][manual]
```
$ cd VSS-SDK
$ ./run.sh
```



Dependências
------------

| Pacote                            | Descrição                                              |
| :-------------------------------: |:------------------------------------------------------:|
| pkg-config                        | Ferramenta que facilita a compilação                   |
| g++                               | Compilador de C++98/C++11                              |
| cmake                             | Ferramenta para construir e testar softwares           |
| git                               | Software distribuído de controle de versão de software |
| uvcdynctrl                        | Software de controle dinâmico de Webcams               |
| libzmqpp3 libzmqpp-dev            | Biblioteca que implementa interfaces de socket         |
| protobuf-compiler libprotobuf-dev | Biblioteca para serializar dados estruturados          |
| qt5                               | Framework para aplicações e Interface Gráfica          |
| libsqlite3-dev                    | Banco de dados SQL embarcado auto-configurável         |
| doxygen graphviz graphviz-dev     | Gerador de documentação e Gráficos                     |
| libboost-all-dev                  | Extensão de código para C++                            |
| freeglut3 freeglut3-dev           | Biblioteca de utilitários OpenGL                       |
| libbullet-dev                     | Biblioteca de Física                                   |




[vision]: https://github.com/SIRLab/VSS-Vision
[simulator]: https://github.com/SIRLab/VSS-Simulator
[viewer]: https://github.com/SIRLab/VSS-Viewer
[sample]: https://github.com/SIRLab/VSS-SampleStrategy
[joystick]: https://github.com/SIRLab/VSS-Joystick
[manual]: https://github.com/SIRLab/VSS-SDK/blob/master/MANUAL.md
