VSS-SDK 
=======
VSS-SDK é *Suite Development Kit* que auxília na construção de um time de futebol de robôs para a categoria *IEEE Very Small Size [Soccer]*, 
o projeto é constituído de: 

> VSS-Vision: Sistema de Visão Computacional feito com base na categoria IEEE Very Small Size [Soccer] que reconhece e rastreia a bola e os robôs em campo;

> VSS-Simulator: Simulador constituído de um campo e de 6 robôs nos padrões da categoria IEEE Very Small Size [Soccer];

> VSS-Viewer: Visualizador de estados em 3D que incorpora os ambientes gerados pelos projetos VSS-Vision e VSS-Simulator;

> VSS-SampleStrategy: Demonstração de como utilizar nossa API e comunicar uma estratégia de jogo com o VSS-Vision e VSS-Simulator, além de como enviar comandos para robôs reais;

> VSS-Joystick:  Demonstração de como utilizar um controle de Playstation 3 (Dualshock 3) para comunicar-se com o VSS-Simulator ou com robôs reais;

Dependências
------------

| Pacote                            | Descrição                                              |
| :-------------------------------: |:------------------------------------------------------:|
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
