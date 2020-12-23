Feature: Fale conosco

    COMO cidadão
    DESEJO entrar em contato com a COELBA  
    PARA resolver uma questão
    
    Background: 
        Given acesso ao sistema da COELBA
        And acesso a seção de "Central de Relacionamento com Cliente"

#RN01: É possível solicitar nova ligação de Energia 
    Scenario: Solicitando Nova Ligação
        When preencher as informações pessoais
            | contrato | nome        | e-mail               |
            | 11765111 | Vilma Souza | vilminha@hotmail.com |
        And preencher as informações de localização
            | cep       | estado  | endereco                     | cidade   | bairro |
            | 41290-200 |  BA     | Rua da Marechal Souza, n° 22 | Salvador | Barra  |
        And preencher a mensagem referente ao "<assunto>"
            | assunto      | mensagem                                         |
            | Ligação nova | Desejo uma nova ligação de energia no meu imóvel |
		And validar as informações
		And confirmar envio da mensagem
        Then é redirecionado para o Portal do Credenciado

#RN02: É necessário preencher os campos que são obrigatórios 
    Scenario: Enviando formulário vazio 
        And não se forneça nenhuma informação
        When confirmar envio da mensagem
        Then são indicados os campos obrigatórios

#RN03: Envio com mensagem com anexos
    Scenario: Adicionando anexos 
        When preencher as informações pessoais
            | contrato | nome        | e-mail               |
            | 11765111 | Vilma Souza | vilminha@hotmail.com |
        And preencher as informações de localização
            | cep       | estado  | endereco                     | cidade   | bairro |
            | 41290-200 |  BA     | Rua da Marechal Souza, n° 22 | Salvador | Barra  |
        And preencher a mensagem referente ao "<assunto>"
            | assunto      | mensagem                                         |
            | Ligação nova | Desejo uma nova ligação de energia no meu imóvel |
        And adicionar anexos
		And validar as informações
        And confirmar envio da mensagem
        Then é redirecionado para o Portal do Credenciado
		
#RN04: Adiconar anexos
    Scenario: Adicionando anexos 
        When adicionar anexos
        And confirmar envio da mensagem
        Then é redirecionado para o Portal do Credenciado


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
        Then é exibida uma mensagem de confirmação, o protocolo e a data da denúncia 
        
#RN3 Imprimir denúncia de irregularidade
    Scenario: Imprimindo denúncia de Irregularidade  
        When confirmar envio da mensagem
        And é exibida uma mensagem de confirmação
        Then uma seção para imprimir é exibida 

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
        Then os locais de pagamento mais próximos são  exibidos 