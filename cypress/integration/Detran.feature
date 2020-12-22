Feature: Fale conosco

    COMO cidadão
    DESEJO mandar uma mensagem para o DETRAN-BA
    PARA realizar sugestões e reclamações
    
    Background: Acesso ao sistema do DETRAN-BA
        Given o acesso ao sistema do DETRAN-BA
    
    #RN01: Enviar mensagem com sucesso
    Scenario: Enviando mensagem para fale conosco do DETRAN-BA
        And se dirigir à seção Fale Conosco
        When preencher todas as informações 
            | nome       | email                 | assunto | mensagem                          |
            | João       | joao@email.com        | Demora  | Demora para entrega de documentos |
            | Celebmuveu | onering@mordor.com.nz | Licença | Licença para unicórnios           |
		And avançar na solicitação
        Then a mensagem é enviada

    #RN02: Pré-Visualizar mensagem do Fale Conosco do DETRAN-BA
    Scenario: Pré-visualizar mensagem do fale conosco 
        And se dirigir à seção Fale Conosco
        When preencher todas as informações
            | nome       | email                 | assunto | mensagem                          |
            | João       | joao@email.com        | Demora  | Demora para entrega de documentos |
            | Celebmuveu | onering@mordor.com.nz | Licensa | Licensa para unicórnios           |
		And avançar na solicitação
        Then a mensagem é visualizada
    
    #RN03: É necessário preencher campos obrigatórios
    Scenario Outline: Campos obrigatórios vazios
        And se dirigir à seção Fale Conosco
        And preencher as informações
        When tento enviar a mensagem
        Then aparece uma mensagem de alerta
        Examples: 
            | nome       | email                 | assunto | mensagem                |
            |            | onering@mordor.com.nz | Licensa | Licensa para unicórnios |
            | Celebmuveu |                       | Licensa | Licensa para unicórnios |
            | Celebmuveu | onering@mordor.com.nz |         | Licensa para unicórnios |
            | Celebmuveu | onering@mordor.com.nz | Licensa |                         |
	 
    #RN04: É necessário preencher o email corretamente
    Scenario: Validar se o campo do email cumpre os requisitos
     And se dirigir à seção "Fale Conosco"
     When preencho as informações de forma incorreta
            | nome  | email        | assunto | mensagem                       | mensagemError                                                               |
            | Perry | ornitorrinco | Pedido  | Pedido de atestado medico      | Inclua um "@" no endereço de e-mail. ornitorrinco está com um "@" faltando. |
            | Anel  | Anel@        | Licensa | Licenciatura para usar o mouse | Insira uma parte depois de "@". anel@ está incompleto.                      |
     And confirmar envio da mensagem
	 Then procuro pela mensagem de error



Feature: Serviços

    COMO cidadão
    DESEJO ver os serviços disponíveis no site do DETRAN-BA
    PARA ter conhecimento

    Background: Acesso ao sistema do DETRAN-BA
        Given o acesso ao sistema do DETRAN-BA
    
    #RN01: São exibidos apenas os serviços que estão em vigencia 
    Scenario: Visualizar todos serviços disponíveis 
        When tento exibir a aba Serviços
        Then os serviços disponiveis são exibidos 

    #RN02: Apenas os serviços para condutores são exibido
    Scenario: Visualizar serviços para condutores
        When tento exibir a aba Serviços para condutores
        Then são exibidos os serviços disponiveis
        And somente para condutores
    
    #RN03: Apenas os serviços para veículos são exibido
    Scenario: Visualizar serviços para veículos
        When tento visualizar a aba Serviços para veículos
        Then são exibidos os serviços disponiveis
        And somente para veículos