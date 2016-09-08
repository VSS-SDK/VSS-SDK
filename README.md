VSS-SDK 
=======
[![GitHub release](https://img.shields.io/github/release/SIRLab/VSS-SDK.svg?maxAge=2592000)](https://github.com/SIRLab/VSS-SDK)


VSS-SDK é *Suite Development Kit* que auxília na construção de um time de futebol de robôs para a categoria *IEEE Very Small Size [Soccer]*, 
o projeto é constituído de: 

> [VSS-Vision][vision]: Sistema de Visão Computacional feito com base na categoria IEEE Very Small Size [Soccer] que reconhece e rastreia a bola e os robôs em campo;

> [VSS-Simulator][simulator]: Simulador constituído de um campo e de 6 robôs nos padrões da categoria IEEE Very Small Size [Soccer];

> [VSS-Viewer][viewer]: Visualizador de estados em 3D que incorpora os ambientes gerados pelos projetos VSS-Vision e VSS-Simulator;

> [VSS-SampleStrategy][sample]: Demonstração de como utilizar nossa API e comunicar uma estratégia de jogo com o VSS-Vision e VSS-Simulator, além de como enviar comandos para robôs reais;

> [VSS-Joystick][joystick]:  Demonstração de como utilizar um controle de Playstation 3 (Dualshock 3) para comunicar-se com o VSS-Simulator ou com robôs reais;

Instalando, Inicializando e Atualizando
---------------------------------------
Se não possuir todas as depêndencias instaladas
```
$ cd VSS-SDK
$ sudo chmod 770 configure.sh
$ sudo chmod 770 init.sh
$ sudo chmod 770 run.sh
$ sudo chmod 770 update.sh
```

Baixando todas as depêndencias, Inicializando todos os Repositórios, Atualizando os Repositórios
```
$ cd VSS-SDK
$ ./configure.sh
```

Inicializando
-------------
Se possuir todas as depêndencias instaladas
```
$ cd VSS-SDK
$ ./init.sh
$ ./update.sh
```


Atualizando
-----------
Atualiza os projetos para as versões mais recentes
```
$ cd VSS-SDK
$ ./update.sh
```


Executando
----------
Ver [Manual][manual] de execução.
```
$ cd VSS-SDK
$ ./run.sh sim viewer or ./run.sh vision viewer ...
```



Exportando uma Estratégia
-------------------------
Exporta um VSS-SampleStrategy para Strategies, assim facilitando a execução.
```
$ cd VSS-SDK
$ ./export.sh
$ ./run.sh sim viewer yellow=name_of_strategy
```



Dependências
------------

| Pacote                                    | Descrição                                              |
| :---------------------------------------: |:------------------------------------------------------:|
| [Pkg-config][pkg-config]                  | Ferramenta que facilita a compilação                   |
| [G++][gpp]                                | Compilador de C++98/C++11                              |
| [Cmake][cmake]                            | Ferramenta para construir e testar softwares           |
| [Git][git]                                | Software distribuído de controle de versão de software |
| [Opencv][opencv]                          | Biblioteca de visão computacional                      |
| [Uvcdynctrl][uvcdynctrl]                  | Software de controle dinâmico de Webcams               |
| [ZeroMQ][zeromq]                          | Biblioteca que implementa interfaces de socket         |
| [Protobuf][protobuf]                      | Biblioteca para serializar dados estruturados          |
| [Qt5][qt]                                 | Framework para aplicações e Interface Gráfica          |
| [SQLite][sqlite]                          | Banco de dados SQL embarcado auto-configurável         |
| [Doxygen][doxygen]                        | Gerador de documentação                                |
| [Graphviz][graphviz]                      | Gerador de gráficos                                    |
| [Boost][boost]                            | Extensão de código para C++                            |
| [Glut][glut]                              | Biblioteca de utilitários OpenGL                       |
| [Bullet Physics][bullet]                  | Biblioteca de física                                   |


[![badge](https://img.shields.io/badge/Ubuntu-16.04-brightgreen.svg)][badges]
[![badge](https://img.shields.io/badge/Ubuntu-14.04-brightgreen.svg)][badges]
[![badge](https://img.shields.io/badge/Debian-8.2-brightgreen.svg)][badges]
[![badge](https://img.shields.io/badge/Debian-8.5-yellow.svg)][badges]
[![badge](https://img.shields.io/badge/Fedora-24-red.svg)][badges]
[![badge](https://img.shields.io/badge/Mint-18-red.svg)][badges]


[vision]: https://github.com/SIRLab/VSS-Vision
[simulator]: https://github.com/SIRLab/VSS-Simulator
[viewer]: https://github.com/SIRLab/VSS-Viewer
[sample]: https://github.com/SIRLab/VSS-SampleStrategy
[joystick]: https://github.com/SIRLab/VSS-Joystick
[manual]: https://github.com/SIRLab/VSS-SDK/blob/master/MANUAL.md

[pkg-config]: https://github.com/pkgconf/pkgconf
[gpp]: http://www.cprogramming.com/g++.html
[cmake]: https://cmake.org/
[git]: https://git-scm.com/
[opencv]: http://opencv.org/
[uvcdynctrl]: https://sourceforge.net/projects/libwebcam/
[zeromq]: http://zeromq.org/
[protobuf]: https://developers.google.com/protocol-buffers/
[qt]: https://www.qt.io/
[sqlite]: https://sqlite.org/
[doxygen]: http://www.stack.nl/~dimitri/doxygen/
[graphviz]: http://www.graphviz.org/
[boost]: http://www.boost.org/
[glut]: https://www.opengl.org/resources/libraries/glut/
[bullet]: http://bulletphysics.org/wordpress/

[badges]: http://shields.io/
