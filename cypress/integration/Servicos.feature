Feature: Serviços

    COMO cidadão
    DESEJO ver os serviços disponíveis no site do DETRAN-BA
    PARA ter conhecimento

    Background: 
        Given o acesso ao sistema do DETRAN-BA 
        
    #RN01: São exibidos apenas os serviços que estão em vigencia 
    Scenario: Visualizar todos serviços disponíveis
        When tento exibir a seção Serviços
        Then os serviços disponiveis são exibidos 
    
    #RN02: Apenas os serviços para condutores são exibido
    Scenario: Visualizar serviços para condutores
        When tento exibir a seção Serviços para condutores
        Then são exibidos os serviços para condutores
    @focus
    #RN03: Apenas os serviços para veículos são exibido
    Scenario: Visualizar serviços para veículos
        When tento visualizar a aba Serviços para veículos
        Then são exibidos os serviços para veículos