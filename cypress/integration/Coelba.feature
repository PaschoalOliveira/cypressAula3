Feature: Fale conosco

    COMO cidadão
    DESEJO entrar em contato com a COELBA  
    PARA resolver uma questão
    
    Background: 
        Given acesso ao sistema da COELBA
        And acesso a seção de "Central de Relacionamento com Cliente"

#RN01: É possível solicitar nova ligação de Energia 
    Scenario: Solicitando Nova Ligação
        And preencher as informações pessoais
            | contrato | nome        | e-mail               |
            | 11765111 | Vilma Souza | vilminha@hotmail.com |
        And preencher as informações de localização
            | cep       | estado  | endereco                     | cidade   | bairro |
            | 41290-200 |  BA     | Rua da Marechal Souza, n° 22 | Salvador | Barra  |
        And preencher a mensagem referente ao "<assunto>"
            | assunto      | mensagem                                         |
            | Ligação nova | Desejo uma nova ligação de energia no meu imóvel |
        When confirmar envio da mensagem
        Then é redirecionado para o Portal do Credenciado

#RN02: É necessário preencher os campos que são obrigatórios 
    Scenario: Enviando formulário vazio 
        And não se forneça nenhuma informação
        When confirmar envio da mensagem
        Then são indicados os campos obrigatórios

#RN03: Adicionar vários anexos
    Scenario: Adicionando anexos 
        And preencher as informações pessoais
            | contrato | nome        | e-mail               |
            | 11765111 | Vilma Souza | vilminha@hotmail.com |
        And preencher as informações de localização
            | cep       | estado  | endereco                     | cidade   | bairro |
            | 41290-200 |  BA     | Rua da Marechal Souza, n° 22 | Salvador | Barra  |
        And preencher a mensagem referente ao "<assunto>"
            | assunto      | mensagem                                         |
            | Ligação nova | Desejo uma nova ligação de energia no meu imóvel |
        And adicionar anexos
        When confirmar envio da mensagem
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
        Then é exibida uma mensagem de confirmação
        And é exibido o protocolo 
        And é exibida a data da denúncia 
        
#RN3 Imprimir denúncia de irregularidade
    Scenario: Imprimindo denúncia de Irregularidade  
        When confirmar envio da mensagem
        Then é exibida uma mensagem de confirmação
        And é exibido o protocolo 
        And é exibida a data da denúncia 
        And é exibido a seção imprimir
        And é exibido a seção para ser impressa 