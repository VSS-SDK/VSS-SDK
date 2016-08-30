VSS-SDK 
=======

Como utilizar ./run.sh
----------------------
Existem quatro Tags que podem ser utilizadas no ./run.sh: **vision, sim, viewer, joystick**. É possivel combina-las da seguinte forma:

### Abrir somente o VSS-Vision
```
$ ./run.sh vision
```

### Abrir somente o VSS-Joystick para controlar robôs reais
```
$ ./run.sh joy
```

### Abrir o VSS-Vision com uma Estratégia (Rotina de Jogo)
```
$ ./run.sh vision sample1
```

### Abrir o VSS-Vision com o VSS-Joystick para controlar robôs reais
```
$ ./run.sh vision joy
```

### Abrir o VSS-Vision (com Ambiente 3D)
```
$ ./run.sh vision viewer
```

### Abrir o VSS-Vision (com Ambiente 3D) com uma Estratégia (Rotina de Jogo)
```
$ ./run.sh vision viewer sample1
```

### Abrir o VSS-Vision (com Ambiente 3D) com o VSS-Joystick para controlar robôs reais
```
$ ./run.sh vision viewer joy
```

### Abrir o VSS-Simulator (com Ambiente 3D)
```
$ ./run.sh sim viewer
```

### Abrir o VSS-Simulator (sem Ambiente 3D) com Duas Estratégias se Enfrentando
```
$ ./run.sh sim yellow=sample1 blue=sample2
```

### Abrir o VSS-Simulator (com Ambiente 3D) com Uma Estratégia em Teste
```
$ ./run.sh sim viewer sample1
```

### Abrir o VSS-Simulator (com Ambiente 3D) com Duas Estratégias se Enfrentando
```
$ ./run.sh sim viewer yellow=sample1 blue=sample2
```

### Abrir o VSS-Simulator (com Ambiente 3D) com VSS-Joystick para controlar robôs no Simulador
```
$ ./run.sh sim viewer joy
```

### Abrir o VSS-Simulator (com Ambiente 3D) com VSS-Joystick controlando robôs de um time para jogar contra uma estratégia
```
$ ./run.sh sim viewer
```

