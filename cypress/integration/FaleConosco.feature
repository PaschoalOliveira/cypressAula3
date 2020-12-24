Feature: Fale conosco

    COMO cidadão
    DESEJO mandar uma mensagem para o DETRAN-BA
    PARA realizar sugestões e reclamações
    
    Background:
        Given o acesso ao sistema do DETRAN-BA
        And se dirigir à seção Fale Conosco
    @focus
    #RN01: Enviar mensagem com sucesso
    Scenario: Enviando mensagem para fale conosco do DETRAN-BA
        When preencher todas as informações 
            | nome       | email                 | assunto | mensagem                          |
            | João       | joao@email.com        | Demora  | Demora para entrega de documentos |
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