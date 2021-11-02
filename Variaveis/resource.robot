***Settings***
Library  Collections

***Variables***
&{pessoa}  nome=Lorrainny  sobrenome=Ferreira  idade=29  sexo:F  cidade=Curitiba  cel:988944344
@{Lista_frutas}     morango     maça     pera     kiwi     acerola


***Keywords***
imprimir pessoa
    Log To Console  \n\nImprimindo pessoa: ${pessoa}\n

criando meu dicionario
    &{criando_pessoa}  Create Dictionary  nome=Lorrainny  sobrenome=Ferreira  idade=29  sexo=F  cidade=Curitiba  cel=988944344
    Set Test Variable  &{criando_pessoa}

imprimir este dicionario
    Log To Console  \n\nImprimindo pessoa: &{criando_pessoa}\n

imprimir Lista de Lista de frutas
    Log To Console  \n\nimprimindo nossa lista de frutas: \n${Lista_frutas}\n