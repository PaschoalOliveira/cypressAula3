Feature: Carregando Lista de Jogadores

    COMO Dirigente de um Time de Futebol
    DESEJO submeter a relação de todos os jogadores do meu Time
    PARA poder utilzar todas as funconalidades do sistema

    #Regra: não devem haver dados predefinos no primeiro acesso
    Scenario: Primeiro Acesso
        Given o acesso ao sistema
        And o usuario não estiver logado
        When entrar no sistema
        Then o perfil é exibido

    #Regra: é possivel enviar uma planilha com os dados dos jogadores
    Scenario: Submetendo Planilha
        Given o acesso ao envio da planilha
        And que não haja jogadores no sistema
        When submeter planilha em "XML"
        Then a planilha foi carregada

    #Regra: o envio da planilha precisa ser confirmado
    Scenario: Confirmando envio
        Given que haja um arquivo para ser enviado
        When confirmar o envio
        And validar a operação
        Then os dados do time foram alterados