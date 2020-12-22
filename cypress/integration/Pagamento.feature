Feature: Locais de pagamento

    COMO cidadão     
    DESEJO saber os locais de pagamento próximos
    PARA realizar pagamento 

    Background: 
        Given acesso ao sistema da COELBA
        And acesso a seção Onde Pagar Sua Conta

    Scenario: Vendo locais de pagamento
        When preencho a localização
            | cidade     | bairro          |
            | Alagoinhas | Santa Terezinha |
        Then consigo ver os locais de pagamento mais próximos