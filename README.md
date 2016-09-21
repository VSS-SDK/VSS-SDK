# VSS-SDK
[![Build Status](https://travis-ci.org/SIRLab/VSS-SDK.svg?branch=master)][travis]
[![badge](https://img.shields.io/badge/Release-1.0.6-blue.svg)][badges]


VSS-SDK é um *Suite Development Kit* que auxília na construção de um time de futebol de robôs para a categoria *IEEE Very Small Size [Soccer]*, 
o projeto é constituído de: 

### [VSS-Vision][vision]:
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)][gpl3]
[![Build Status](https://travis-ci.org/SIRLab/VSS-Vision.svg?branch=master)][vision-travis]
[![Link: Youtube](https://img.shields.io/badge/Link-Youtube-red.svg)][vision-youtube]
[![badge](https://img.shields.io/badge/contributors-5-blue.svg)][vision-con]

Sistema de Visão Computacional feito com base na categoria IEEE Very Small Size [Soccer] que reconhece e rastreia a bola e os robôs em campo;

![screenshot 1](https://raw.githubusercontent.com/SIRLab/VSS-Vision/master/images/top.png)

### [VSS-Simulator][simulator]:
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)][mit]
[![Build Status](https://travis-ci.org/SIRLab/VSS-Simulator.svg?branch=master)][simulator-travis]
[![Link: Youtube](https://img.shields.io/badge/Link-Youtube-red.svg)][simulator-youtube]
[![badge](https://img.shields.io/badge/contributors-2-blue.svg)][simulator-con]

Simulador constituído de um campo e de 6 robôs nos padrões da categoria IEEE Very Small Size [Soccer];

### [VSS-Viewer][viewer]:
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)][gpl3]
[![Build Status](https://travis-ci.org/SIRLab/VSS-Viewer.svg?branch=master)][viewer-travis]
[![Link: Youtube](https://img.shields.io/badge/Link-Youtube-red.svg)][viewer-youtube]
[![badge](https://img.shields.io/badge/contributors-1-blue.svg)][viewer-con]

Visualizador de estados em 3D que incorpora os ambientes gerados pelos projetos VSS-Vision e VSS-Simulator;

![screenshot 2](https://raw.githubusercontent.com/SIRLab/VSS-Viewer/master/images/top.png)

### [VSS-SampleStrategy][sample]:
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)][gpl3]
[![Build Status](https://travis-ci.org/SIRLab/VSS-SampleStrategy.svg?branch=master)][sample-travis]
[![Link: Youtube](https://img.shields.io/badge/Link-Youtube-red.svg)][sample-youtube]
[![badge](https://img.shields.io/badge/contributors-1-blue.svg)][sample-con]

Demonstração de como utilizar nossa API e comunicar uma estratégia de jogo com o VSS-Vision e VSS-Simulator, além de como enviar comandos para robôs reais;

### [VSS-Joystick][joystick]:
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)][gpl3]
[![Build Status](https://travis-ci.org/SIRLab/VSS-Joystick.svg?branch=master)][joystick-travis]
[![Link: Youtube](https://img.shields.io/badge/Link-Youtube-red.svg)][joystick-youtube]
[![badge](https://img.shields.io/badge/contributors-1-blue.svg)][joystick-con]

Demonstração de como utilizar um controle de Playstation 3 (Dualshock 3) para comunicar-se com o VSS-Simulator ou com robôs reais;

### [VSS-GameLogger][gamelogger]:
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)][gpl3]
[![Build Status](https://travis-ci.org/SIRLab/VSS-GameLogger.svg?branch=master)][gamelogger-travis]
[![badge](https://img.shields.io/badge/contributors-2-blue.svg)][gamelogger-con]

A log generator/reader of a match executed on the VSS-Vision and VSS-Simulator.


Mais informações em: http://sirlab.github.io/

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

Baixando todas as depêndencias, Inicializando e Atualizando todos os Repositórios
```
$ cd VSS-SDK
$ ./configure.sh
```

Inicializando
-------------
Se possuir todas as depêndencias instaladas, há somente a necessidade de Inicializar e Atualizar os Repositórios
```
$ cd VSS-SDK
$ ./init.sh
$ ./update.sh
```


Atualizando
-----------
Atualizando os projetos para as versões mais recentes
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


Configurando nas Distros
------------------------
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

[gpl3]: http://www.gnu.org/licenses/gpl-3.0/
[mit]: https://raw.githubusercontent.com/hyperium/hyper/master/LICENSE

[badges]: http://shields.io/
[travis]: https://travis-ci.org/SIRLab/VSS-SDK
[youtube1]: https://www.youtube.com/watch?v=kY607fLqeB0
[youtube2]: https://www.youtube.com/watch?v=UQeVL_I5NIw

[vision-travis]: https://travis-ci.org/SIRLab/VSS-Vision
[simulator-travis]: https://travis-ci.org/SIRLab/VSS-Simulator
[viewer-travis]: https://travis-ci.org/SIRLab/VSS-Viewer
[sample-travis]: https://travis-ci.org/SIRLab/VSS-SampleStrategy
[joystick-travis]: https://travis-ci.org/SIRLab/VSS-Joystick
[gamelogger-travis]: https://travis-ci.org/SIRLab/VSS-GameLogger

[vision-con]: https://github.com/SIRLab/VSS-Vision/graphs/contributors
[simulator-con]: https://github.com/SIRLab/VSS-Simulator/graphs/contributors
[viewer-con]: https://github.com/SIRLab/VSS-Viewer/graphs/contributors
[sample-con]: https://github.com/SIRLab/VSS-SampleStrategy/graphs/contributors
[joystick-con]: https://github.com/SIRLab/VSS-Joystick/graphs/contributors
[gamelogger-con]: https://github.com/SIRLab/VSS-GameLogger/graphs/contributors

[vision-youtube]: https://www.youtube.com/watch?v=LnWzAgE9Oqs
[simulator-youtube]: https://www.youtube.com/watch?v=PZ5toHCb7KY
[viewer-youtube]: https://www.youtube.com/watch?v=uyFlXV-0NnU
[sample-youtube]: https://www.youtube.com/watch?v=qYsNPGvAuME
[joystick-youtube]: https://www.youtube.com/watch?v=KJb4MIfrmH8
