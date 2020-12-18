Feature: Comunicar vazamentos
    
    COMO cidadão
    DESEJO informar a ocorrencia de um vazamento
    PARA contribuir com a manutenção dos recursos hidrícos
    
    Background: Acesso à agência virtual da Embasa
        Given o acesso à agência virtual da Embasa
        And o acesso a seção "Vazamento"
    
    #RN: É possível comunicar um vazamento à Embasa
    #RN: É possível comunicar o vazamento especificando o local: REDE/RAMAL/HIDROMETRO
    Scenario: Comunicar vazamento de água na rua 
        And o acesso a seção "Na Rua/Rede"
        And o preenchimento das informações do evento na rua
            | local_ocorrencia | pavim_rua | pavim_calçada | nome        | fone          | endereço         | numero     | cidade     | ponto_referencia    |  
            | rua              | asfalto   | concreto      | Gui del Toro| (71) 12345678 | Lab do Fauno     | 404        | Salvador   | Prox ao mercado Luz |
        When avançar na solicitação
        And visualizar o resumo das informações preenchidas
        And confirmar o envio da mensagem
        Then a mensagem é enviada 

    Scenario: Comunicar vazamento de água no hidrômetro 
        And o acesso a seção "No Hidrômetro"
        And preencher todas informações do evento no hidrômetro
            | nome         | fone          | endereço         | numero     | cidade     | ponto_referencia    |  
            | Lola  Barrow | (71) 12345678 | Lab do Fauno     | 404        | Salvador   | Prox ao mercado Luz |
        When avançar na solicitação
        And visualizar o resumo das informações preenchidas
        And confirmar o envio da mensagem
        Then a mensagem é enviada 

    #RN: É necessário preencher os campos obrigatórios
    Scenario: Deixando campos obrigatórios vazios
        And o acesso a seção "No Hidrômetro"
        When avançar na solicitação
        Then é requerida o preenchimento das informações obrigatórias 
    #RN: É possível enviar imagens

    Scenario: Enviando imagens do vazamento
    
        And acesso a seção "Na Rua/Rede"
        And o preenchimento das informações
            | local_ocorrencia | pavim_rua | pavim_calçada | nome        | fone          | endereço         | numero     | cidade     | ponto_referencia    |  
            | rua              | asfalto   | concreto      | Gui del Toro| (71) 12345678 | Lab do Fauno     | 404        | Salvador   | Prox ao mercado Luz |
        When tento enviar imagens do vazamento
        And avançar na solicitação
        Then a imagem aparece no resumo