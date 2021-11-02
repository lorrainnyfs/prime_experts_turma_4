***Test Cases***
cenario: entendendo como o robot funciona por linha de comando
    [Tags]  chamando_robot
    Log To Console  \n\nOla pessoal da turma 4\n

cenario: rodando mais de um teste
    Log To Console  \n\nExecutei mais de um teste galera !!! \n


cenario: recebendo um valor pelo terminal
    [Tags]  recebendo_valor
    Log To Console  \n\nOlá ${valor_do_terminal}!!!!\n