#language:pt
Funcionalidade: aprovar ou reprovar etapas por um software
Para aprovar ou reprovar itens
Como por um softaware
Eu quero ter controle sobre as requisições e etapas da empresa

#RN01: adicionar informações de endereço para aprovação
Esquema do Cenário: adicionar informações 
    Dado acesso ao software e que exista um item cadastrado
    Quando adicionar informações de "endereço" 
    Então o sistema deve adicionar o "endereço" 
    
Exemplos:
| endereço              |
| Av. Paralela, 572     | 
| Imbuí 003             | 

#RN02: receber notificação para cada item adicionado
    Cenário: receber notificações 
    Dado acesso ao software e que exista um item cadastrado
    Quando receber notificação de um item solicitado
    Então é exibida a notificação 


#RN03: receber notificação do processo final
    Cenário: receber notificações 
    Dado acesso ao software e que exista um item cadastrado
    Quando receber notificação do processo final
    Então é exibida a notificação do processo final 

#RN04: autorizar itens
Esquema do Cenário: autorizar itens solicitados 
    Dado acesso ao software e que exista um item cadastrado
    Quando autorizar "item"
    Então o sistema deve autorizar o "item" 
    
Exemplos:
| item                  |
| Av. Paralela, 572     | 
| Imbuí 003             | 