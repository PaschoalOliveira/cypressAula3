Feature: Irregularidade

    COMO cidadão
    DESEJO denunciar uma irregularidade - Gato de Energia
    Para resolver uma questão

    Background: 
        Given acesso ao sistema da COELBA
        And acesso a seção de "Canais de Atendimento"
        And acesso a seção de "Denúncia de Irregularidade - Gato de Energia"
        And preencher as informações
            | Endereço | Número | Bairro    | Cidade   | Ponto de Referência | Texto para Denúncia                |
            |  Rua J   | 08     | Boa Vista | Salvador | perto da escola X   | Estão fazendo gato na minha energia|

#RN02 Denunciar irregularidade
    Scenario: Denunciando Irregularidade  
        When confirmar envio da mensagem
        Then é exibida uma mensagem de confirmação
        And é exibido o protocolo 
        And é exibida a data da denúncia 
        
#RN3 Imprimir denúncia de irregularidade
    Scenario: Imprimindo denúncia de Irregularidade  
        When confirmar envio da mensagem
        Then é exibida uma mensagem de confirmação
        And é exibido o protocolo 
        And é exibida a data da denúncia 
        And é exibido a seção imprimir
        And é exibido a seção para ser impressa 