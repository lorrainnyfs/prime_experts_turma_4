***settings***
Resource  ./resource.robot

***Test Cases***
cenario: criando email por argumentos embutidos
    Dado que eu recebo o nome "lorrainny" sobrenome "ferreira" e a idade "29"
    Quando monto o meu email
    Entao imprimo o meu novo email

