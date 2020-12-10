#language: pt

Funcionalidade: Enviar informações dos jogadores

    Eu, como dirigente de um time, desejo poder enviar relação de jogadores do time, para registrar.

    #Resumo: É possível enviar a relação de jogadores, checar como ficaria a relação de jogadores antes de confirmar o envio,
    # conseguir confirmar ou cancelar o envio da relação de jogadores

    Cenário: Enviar relação de jogadores
        Dado que exista um time registrado
        Quando tento enviar a relação de jogadores do time
        E confirmo o envio
        Então a relação é enviada
        E a lista de jogadores do time é atualizada
    Cenário: Checar a relação de jogadores
        Dado que a relação de jogadores foi enviada
        Quando tento checar a relação 
        Então eu consigo visualizar a relação de jogadores
    Cenário: Cancelar envio de relação de jogadores
        Dado que a relação de jogadores foi enviada
        Quando tento cancelar o envio da relação de jogadores
        Então o envio é cancelado