# Especificações Natrix

A linguagem natrix é uma linguagem simples para computação numerica elementar:

- Trabalha com **inteiros (64 bits)** e **intervalos de inteiros positivos**, tem **vetores** definidos com base nestes intervalos.
- Dispõe também de uma **estrutura condicional** e de uma **estrutura cíclica**.
- Finalmente natrix tem **funções** (passagem por valor).

----

**maxint** e **minint** são *constantes* que existem por omissão na linguagem.

A palavra chave **type** introduz **definições de tipos** (com respectivo nome)  
Por exemplo, intervalos são introduzidos desta forma

```C
// isto é um comentário
```

```C
type i = [10 .. 20] ;
type i_max = [10 .. maxint] ;
```

Uma restrição é que os intervalos são **sempre sobre valores positivos**.

Podemos introduzir tipos de vectores desta forma:  
`type arr = array i of i_max ;`

As variáveis da linguagem natrix são variáveis mutáveis (à la C), são tipadas (explicitamente) e **necessariamente inicializadas**.  
Não há possibilidade das variáveis serem não inicializadas.

```C
var x : int = 5 ;
var y : i_max = 10 ;
var tab1 : arr filled by 0 ;
var tab2 : array 10 of int filled by 1 ;
```

Quando o vector é **declarado sem o intervalo dos seus índices, o vector tem de ter a informação do seu tamanho** - aqui o tamanho é 10 - o intervalo do índice é então 0..9

A atribuição e expressões numéricas (exemplos ilustrativos), as expressões são as mesmas do que a linguagem arith, com o acréscimo da função size que devolve o tamanho dos intervalos e dos vectores.

```C
x := x + size(30..35) + size(tab1) ;
tab[5] := let y = x + 3 in y * 5 ;
```

Potencialmente **dá erro se o resultado está fora do intervalo i_max**.

Dispomos em natrix de uma instrução *print* para mostrar valores numéricos:
`print( x + 1 ) ;`

----

## Estrutura condicional

Natrix dispõe de uma instrução condicional if clássica

```C
if (x > 7) then {  y := y + 1 ; }
           else {  y := y + 2 ; }
```

----

As condições seguem o padrão clássico:  
`( =, != , <, <=, >, >=, &, | )`

## Estrutura cíclica

Finalemente natrix fornece ciclos deterministas:  

```C
foreach i in 1..19 do {
     x := x + i;   y = i * 2;
}
```

----

## Programa exemplo natrix

Um programa natrix é uma sequência de instruções como as que foram acima apresentados. Um exemplo completo de um programa natrix:

```C
type t = 0 .. 1000 ;

type arr : array t of int;
var a : arr filled by 0;

var n2 : int = 0 ;
var n1 : int = 1 ;

a[0] := 0 ;
a[1] := 1 ;
foreach i in 2 .. 1000 do {a[i] := a[i-1] + a[i-2];}

print(a[1000]);

var tmp : int  = 0 ;
foreach i in t do {tmp:= n1; n1:= n2 + n1; n2 := tmp;}
print(n1);
```

----

## Objetivos

- [ ] Testes de programas clássicos
- [ ] Definir uma gramática
- [ ] Lexer
- [ ] Parser
- [ ] Árvore Sintaxe Abstrata
- [ ] Semântica Operacional Básica
- [ ] Interpretador

- [ ] Compilador
