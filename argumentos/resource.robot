***Variables***
${nome_email}
${sobrenome_email}
${idade_email}
${prefixo_email}    @robot.com
${email_pronto}

***Settings***
&{pessoa}  nome=Lorrainny  sobrenome=Ferreira  idade=29  sexo:F  cidade=Curitiba  cel:988944344
@{Lista_frutas}     morango     maça     pera     kiwi     acerola

***keywords***
Dado que eu recebo o nome "${nome}" sobrenome "${sobrenome}" e a idade "${idade}"
    Set Test Variable  ${nome_email}                ${nome}  
    Set Test Variable  ${sobrenome_email}           ${sobrenome} 
    Set Test Variable  ${idade_email}               ${idade}    

Quando monto o meu email
    ${email}  Catenate  ${nome_email}_${sobrenome_email}_${idade_email}_${prefixo_email}
    Set test Variable  ${email_pronto}    ${email}

Entao imprimo o meu novo email
    Log To Console  \n\n Bem vindo ao mundo Robot, este é seu novo email:  ${email_pronto}!!\n






