Feature: Irregularidade

    COMO cidadão
    DESEJO denunciar uma irregularidade - Gato de Energia
    Para resolver uma questão

    Background: 
        Given acesso ao sistema da COELBA
        And acesso a seção de "Canais de Atendimento"
        And acesso a seção de "Denunciar Desvio de Energia"
        And preencher as informações
            | Endereço | Número | Bairro    | Cidade   | Ponto_de_Referência | Texto_para_Denúncia                |
            |  Rua J   | 08     | Boa Vista | Salvador | perto da escola X   | Estão fazendo gato na minha energia|

#RN02 Denunciar irregularidade
    Scenario: Denunciando Irregularidade  
        When confirmar envio da mensagem
        Then é exibida uma mensagem de confirmação, o protocolo e a data da denúncia 
    @focus    
#RN3 Imprimir denúncia de irregularidade
    Scenario: Imprimindo denúncia de Irregularidade  
        And confirmar envio da mensagem
        And é exibida uma mensagem de confirmação
        When confirmar impressão
        Then uma seção para imprimir é exibida  