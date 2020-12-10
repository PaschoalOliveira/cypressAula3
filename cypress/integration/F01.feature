Feature: Atualização de Jogadores Lesionados

    COMO Técnico de um Time de Futebol
    DESEJO atualizar a relação de jogadores lesionados
    PARA que possa ter um quadro geral da situação

    #Regra: é possível buscar por um jogador 
    Scenario: Buscando Jogador
        Given que o usuário esteja logado
        When buscar por um jogador
        And este jogador exista no sistema
        And ao selecionar jogador
        Then os dados do jogador são exibidos

    #Regra: é possivel definir um jogador como: TITULAR/RESERVA/PENDURADO
    Scenario: Definindo jogador como PENDURADO
        Given que um jogador foi selecionado
        And seus dados foram exibidos
        When definir o posicionamento do jogador para "PENDURADO"
        Then posição do jogador foi alterada

    #Regra: é possível definir o motivo da PENDURA como: FALTAS/SAUDE/OUTROS 
    Scenario: Definindo motivo da PENDURA
        Given que um jogador foi pendurado
        When definir o motivo como "SAUDE"
        Then o motivo foi Definindo
    
    #Regra: é possivel fornecer uma descrição para o motivo da PENDURA
    #Regra: campo descrição é obrigatório
    Scenario: Descrevendo motivo de SAUDE
        Given que tenha sido definido o motivo "SAUDE"
        When fornecer uma descrição para o caso
        And que esta descrição não seja vazia
        Then a descrição foi realizada

    #Regra: é obrigatorio anexar um relatorio médico em PDF
    Scenario: Anexando relatório médico
        Given que tenha sido definido o motivo "SAUDE"
        And que tenha sido feita uma descrição
        When anexar um relatório médico
        And este esteja no formato "PDF"
        Then o relatório foi anexado

    #Regra: é obrigatorio informar o período de licença do jogador
    Scenario: Definindo período de licença
        Given que um jogador foi pendurado
        When definir seu período de licença
        Then o peíodo foi definido

    #Regra: as alterações precisam ser salvas
    Scenario: Salvando Alterações
        Given que todos os campos obrigatórios tenham sido preenchidos
        When salvar Alterações
        Then as informações do jogador foram alteradas
