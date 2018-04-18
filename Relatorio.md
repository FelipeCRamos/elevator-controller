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

  Um display segmentado é constituido por 7 segmentos de uma fonte luminosa qualquer. Cada segmento irá acender ou continuar apagado dependendo do estimulo de voltagem que receber, o que será controlado pelo circuito do display por meio de lógica booleana para determinar quais dos 7 segmentos irão ligar para cada número de 4 bits. 

  No caso do projeto em questão, foi implementado com ajuda dos mapas de karnaugh a seguinte lógica:

  Para cada segmento `S`, existirá uma regra booleana (ex: `bit[1]` and `bit[3]`) para que esse filamento ligue ou continue desligado.

+ ***Multiplexadores (2x1 & 4x1)***

  Um multiplexador pode ser utilizado para reaproveitar canais de comunicação, tornando o circuito mais econômico (matériais, tamanho e custo) e simplório.

+ ***Codificadores***

  Quando uma tecla no teclado numérico do elevador é pressionada, é necessário criar um número de 4 bits referente ao valor do andar, para que o resto do circuito possa cumprir seu papel. Eis o que um codificador faz, transforma, por exemplo, o clique na tecla `8` em seu correspondente binário `1000`.

+ ***Comparadores***

  São necessários para toda e qualquer comparação de valores dentro de um circuito, podendo retornar um valor booleano especificado anteriormente para controle de outros multiplexadores, por exemplo. É um circuito normalmente auxiliar.

+ ***Subtratores***

  A subtração através de portas booleanas é algo não tão intuitivo, visto que além de ser em uma base não-natural, é totalmente dependente de relações da álgebra booleana. São subtratores simples, com operações carry in e subtratores completos unindo todos.

+ ***Swap (circuito auxiliar)***

  Um circuito simples para fazer operações de trocas.

+ ***Elevador (circuito principal, que une todos os outros)***

  É o circuito principal do projeto, responsável por unir os circuitos a entrada & saída de dados. Quando um usuário clicar no botão do andar que quer ir, o elevador irá realizar as seguintes operações:

  1. Codificar o digito do usuário para seu correspondente 4 bits.

  2. Comparar com o andar atual, para, caso o usuário ter clicado sem querer, simplesmente ignorar o clique.

  3. Caso não seja o andar atual, através de comparações, irá descobrir se é um andar acima ou abaixo e decidir quantos andares terá que subir/descer através do valor absoluto da diferença dos dois andares (`|atual - desejado|`).

  4. Informar o andar atual no display segmentado e por quantos andares o elevador deverá funcionar (informado no segundo display segmentado).

  5. Depois de se movimentar até o andar, checar se é o andar escolhido pelo usuário e abrir a porta (não implementado nesse projeto, comentado para fins ilustrativos).

     ​


