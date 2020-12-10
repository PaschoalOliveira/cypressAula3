#language: pt
Funcionalidade: Solicitar lançamento de efluente
   COMO Engenheiro Sanitarista da industria de tratamento de efluente
   DESEJO solicitar ou editar solicitação de lançamentos de efluentes
   PARA que não haja problema de contaminação no solo 

   #Regra: É possível solicitar o lançamento de efluentes
   # Apenas o Engenheiro Sanitarista pode fazer tal solicitação 
   Esquema do Cenário: Solicitar lançamento de efluente
      Dado que acesse o software 
      E autentique meu usuário
      Quando clico em Nova Solicitação de Lançamento
      E preencho os dados
      Então a solicitação é "<resposta>"    
      Exemplos:
        | novo do efluente | volume (em L) | local de lançamento  | resposta  | 
        | efluente X       | 250           | Rua do Não Faça Isso | realizada |
    #Regra: A solicitação só é realizada se o local de lançamento estiver no sistema
    Esquema do Cenário: Solicitar lançamento de efluente em regiões não cadastradas
      Dado que acesse o software 
      E autentique meu usuário
      Quando clico em Nova Solicitação de Lançamento
      E preencho os dados
      Então a solicitação é "<resposta>"    
      Exemplos:
        | novo do efluente | volume (em L) | local de lançamento    | resposta        | 
        | efluente Y       | 110           | Rua do Jogue no centro | não é realizada |
    #Regra: Apenas solicitações não autorizadas podem ser editadas 
    #RN: O volume limite é de 200l
    Esquema do Cenário: Editar solicitação de lançamento de efluente
      Dado que acesse o software 
      E autentique meu usuário
      Quando clico em Editar Solicitação de Lançamento X
      E preencho os dados
      Então a solicitação é "<resposta>"    
      Exemplos:
        | novo do efluente | volume (em L) | local de lançamento  | resposta | 
        | efluente X       | 195           | Rua do Não Faça Isso | editada  |