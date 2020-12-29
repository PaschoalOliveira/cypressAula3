Feature: Fale conosco

    COMO cidadão
    DESEJO mandar uma mensagem para o DETRAN-BA
    PARA realizar sugestões e reclamações
    
    Background:
        Given o acesso ao sistema do DETRAN-BA
        And se dirigir à seção Fale Conosco
    
    #RN01: Enviar mensagem com sucesso
    Scenario: Enviando mensagem para fale conosco do DETRAN-BA
        When preencher todas as informações 
            | nome       | email                 | assunto | mensagem                          |
            | João       | joao@email.com        | Demora  | Demora para entrega de documentos |
		And avançar na solicitação
        Then a mensagem é enviada
    #RN02: Pré-Visualizar mensagem do Fale Conosco do DETRAN-BA
    
    Scenario: Pré-visualizar mensagem do fale conosco 
        And preencher todas as informações
            | nome       | email                 | assunto | mensagem                          |
            | Celebmuveu | onering@mordor.com.nz | Licensa | Licensa para unicórnios           |
		When avançar na Pré-visualização
        Then a mensagem é visualizada
    
    #RN03: É necessário preencher campos obrigatórios
    Scenario Outline: Campos obrigatórios vazios
        And preencher as informações "<nome>", "<email>", "<assunto>" e "<mensagem>"
        When prosseguir no envio
        Then aparece uma mensagem de alerta
        Examples: 
            | nome       | email                 | assunto | mensagem                |
            |            | onering@mordor.com.nz | Licensa | Licensa para unicórnios |
            | Celebmuveu |                       | Licensa | Licensa para unicórnios |
            | Celebmuveu | onering@mordor.com.nz |         | Licensa para unicórnios |
            | Celebmuveu | onering@mordor.com.nz | Licensa |                         |

    #RN04: É necessário preencher o email corretamente
    Scenario Outline: Validar se o campo do email cumpre os requisitos
     When preencher as informações "<nome>", "<email>", "<assunto>" e "<mensagem>" de forma incorreta  
     And confirmar o envio da mensagem
	 Then procuro pela mensagem "<mensagemError>"
        Examples:
            | nome  | email        | assunto | mensagem                       | mensagemError                                                               |
            | Perry | ornitorrinco | Pedido  | Pedido de atestado medico      | Insira um "@" no endereço de e-mail. ornitorrinco está com um "@" faltando. |
            | Anel  | Anel@        | Licensa | Licenciatura para usar o mouse | Insira uma parte depois de "@". Anel@ está incompleto.                      |



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
        
    #RN03: Apenas os serviços para veículos são exibido
    Scenario: Visualizar serviços para veículos
        When tento visualizar a aba Serviços para veículos
        Then são exibidos os serviços para veículos