VSS-GameLogger
==============
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)][gpl3]
[![Build Status](https://travis-ci.org/SIRLab/VSS-GameLogger.svg?branch=master)][travis]


O VSS-GameLogger é uma das partes de um framework que está sendo desenvolvido para a categoria de futebol de robôs [IEEE Very Small Size Soccer (VSSS)][vss], que consiste em:

> Um programa de Visão Computacional global para a categoria, o [VSS-Vision][vss-vision];

> Um simulador para a categoria, o [VSS-Simulator][vss-simulator];

> Um visualizador de estados em 3D para categoria, o [VSS-Viewer][vss-viewer];

> Uma base de estratégia que pode ser utilizada para obter e enviar dados dos três projetos citados, o [VSS-SampleStrategy][vss-sample].

> Um gerador e leitor de logs de partidas executadas em cima do VSS-Vision e VSS-Simulator.

Mais informações podem ser encontradas em [sirlab.github.io][sirlab_site].


Cloning
-------
```
$ git clone --recursive https://github.com/SIRLab/VSS-GameLogger.git
```


Development and Use
-------------------

```
$ make proto
$ make 
$ ./VSS-GameLogger
```

License
-------

This code is licensed under the [GNU GENERAL PUBLIC LICENSE Version 3][gpl3], of which a textual copy is available at [LICENSE.txt](LICENSE.txt).

You are allowed and encouraged to use this software on the IEEE Very Small Size Soccer competitions.  If you do, please let us know.

[gpl3]: http://www.gnu.org/licenses/gpl-3.0/
[sirface]: https://www.facebook.com/sirlab.faeterj/
[siryou]: https://www.youtube.com/channel/UCLXQhza5oA2EJYsYDbr41ZQ
[sirlink]: https://www.linkedin.com/company/sir-lab
[vss]: http://www.cbrobotica.org/
[protobuf]: https://developers.google.com/protocol-buffers/
[zmq]: http://zeromq.org/
[opencv]: http://opencv.org/
[glfw]: http://www.glfw.org/
[imgui]: https://github.com/ocornut/imgui/
[travis]: https://travis-ci.org/SIRLab/VSS-SampleStrategy
[samplestrategy]: https://github.com/SIRLab/VSS-SampleStrategy
[install]: https://github.com/SIRLab/VSS-SampleStrategy/blob/master/INSTALL.md
[youtube]: https://www.youtube.com/watch?v=qYsNPGvAuME
[vss-vision]: https://github.com/SIRLab/VSS-Vision
[vss-simulator]: https://github.com/SIRLab/VSS-Simulator
[vss-viewer]: https://github.com/SIRLab/VSS-Viewer
[vss-sample]: https://github.com/SIRLab/VSS-SampleStrategy
[sirlab_site]: http://sirlab.github.io/vss.html