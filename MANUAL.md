VSS-SDK 
=======

Como utilizar ./run.sh
----------------------
Existem seis Tags que podem ser utilizadas no ./run.sh: **vision, sim, viewer, joy, yellow=nome_da_estrategia e blue=nome_da_estrategia**. É possivel combina-las da seguinte forma:

### Abrir somente o VSS-Vision
```
$ ./run.sh vision
```

### Abrir somente o VSS-Joystick para controlar robôs reais
```
$ ./run.sh joy
```

### Abrir o VSS-Vision com o VSS-SampleStrategy (Rotina de Jogo)
```
$ ./run.sh vision yellow=sample or ./run.sh vision blue=sample
```

### Abrir o VSS-Vision com uma Estratégia da pasta Strategies (Rotina de Jogo)
```
$ ./run.sh vision yellow=name_of_strategy or ./run.sh vision blue=name_of_strategy
```

### Abrir o VSS-Vision com o VSS-Joystick para controlar robôs reais
```
$ ./run.sh vision joy
```

### Abrir o VSS-Vision (com Ambiente 3D)
```
$ ./run.sh vision viewer
```

### Abrir o VSS-Vision (com Ambiente 3D) com o VSS-SampleStrategy (Rotina de Jogo)
```
$ ./run.sh vision viewer yellow=sample or ./run.sh vision viewer blue=sample
```

### Abrir o VSS-Vision (com Ambiente 3D) com uma Estratégia da pasta Strategies (Rotina de Jogo)
```
$ ./run.sh vision viewer yellow=name_of_strategy or ./run.sh vision viewer blue=name_of_strategy
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
$ ./run.sh sim yellow=sample blue=name_of_strategy or ./run.sh sim yellow=name_of_strategy blue=sample
```

### Abrir o VSS-Simulator (com Ambiente 3D) com Uma Estratégia em Teste
```
$ ./run.sh sim viewer yellow=sample or ./run.sh sim viewer yellow=name_of_strategy
```

### Abrir o VSS-Simulator (com Ambiente 3D) com Duas Estratégias se Enfrentando
```
$ ./run.sh sim viewer yellow=sample blue=name_of_strategy or ./run.sh sim viewer yellow=name_of_strategy blue=sample
```

### Abrir o VSS-Simulator (com Ambiente 3D) com VSS-Joystick para controlar robôs no Simulador
```
$ ./run.sh sim viewer yellow=joy or ./run.sh sim viewer blue=joy
```

### Abrir o VSS-Simulator (com Ambiente 3D) com VSS-Joystick controlando robôs de um time para jogar contra uma estratégia
```
$ ./run.sh sim viewer yellow=joy blue=sample or ./run.sh sim viewer yellow=joy blue=name_of_strategy
```

