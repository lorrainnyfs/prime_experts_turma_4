***keywords***
contando de "${num_init}" ate "${num_final}" a procura dos numeros 5 ou 8
    FOR  ${num}  IN RANGE  ${num_init}  ${num_final}
        IF  ${num}==5
            Log To Console  \n estou no numero: ${num} \n
        ELSE IF  ${num}==8
            Log To Console  \n estou no numero: ${num} \n
        END
    END