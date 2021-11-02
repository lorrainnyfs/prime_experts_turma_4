***Variables***
@{Lista_pais}   França  Italia  Suiça  Japão  Grecia

***Keywords***
contando de "${num_init}" ate "${num_final}"
    FOR  ${num}   IN RANGE  ${num_init}  ${num_final}
       Log To Console  \n estou no numero: ${num} \n
    END

contando em que pais viajamos
    FOR  ${pais}  IN   @{lista_pais}
         Log To Console  \n Já viajamos por ${pais} \n
    END