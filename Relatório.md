# Controlador de Elevadores
*Aluno:* ***Felipe da Costa Ramos Filho***

## Descrição do Projeto

O projeto consiste na implementação de um controle parcial (apenas de sua parte combinacional) de um elevador para um prédio de 9 andares.

Para tal, o projeto conta com os seguintes aparatos de I/O:

+ 2x Displays segmentados *(andar atual e deslocamento do elevador)*
+ Teclado numérico *(entrada do andar desejado)*



### Componentes

Lista de componentes utilizados e devidamente programados para cumprir com as respectivas tarefas:

+ ***Circuito do display segmentado***

  É um simples circuito, que recebe 4 bits, interpreta o número e gera uma saída no display segmentado com 7 traços. Nele foi usado básicamente algebra booleana com ajuda dos Mapas de Karnaugh para simplificação de sua lógica.

+ ***Multiplexadores (2x1 & 4x1)***

  Com eles foi possivel a simplificação dos circuitos, através de suas portas seletoras simplifica muito na hora de projetar um circuito.

+ ***Codificadores***

  Necessários para gerar o código de 4 bits referente a cada tecla de andar pressionada.

+ ***Comparadores (bit a bit e 4bits)***

  São circuitos auxiliares que por meio de comparações ajudam na lógica de outros circuitos maiores.

+ ***Subtratores (bit a bit e 4bits)***

  Subtratores simples, com operações carry in e subtratores completos unindo todos.

+ ***Swap (circuito auxiliar)***

  Um circuito simples para fazer operações de trocas.

+ ***Elevador (circuito principal, que une todos os outros)***

  Circuito principal, que faz o mapeamento de todas as portas em seus referentes circuitos.




