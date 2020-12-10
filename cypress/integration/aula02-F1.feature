#language: pt
Funcionalidade: Autorizar ou reprovar lançamento de efluentes
   COMO Líder de Processos da industria de tratamento de efluente
   DESEJO autorizar ou reprovar as requisições de lançamento de efluente
   PARA atender as diretrizes da empresa

   # Apenas o líder de projetos pode consultar, autorizar ou reprovar solicitações
   #Regra: Consultar as requisições de tratamento
   Cenário: Consultar as requisições feitas
      Dado Dado que acesse o software 
      E autentique meu usuário
      Quando clico em Requisições
      Então verifico a lista de requisições realizadas       
   #Regra: É possível aprovar as requisições de tratamento
   Esquema do Cenário: Aprovar lançamento de efluente
      Dado que acesse o software 
      E autentique meu usuário
      Quando clico em Requisições
      E seleciono a opção Aprovar
      Então a solicitação é "<resultado>"    
      Exemplos:
        | novo do efluente | volume (em L) | local de lançamento  | resultado | 
        | efluente X       | 250           | Rua do Não Faça Isso | aprovada  |
   #Regra: É possível reprovar as requisições de tratamento
   Esquema do Cenário: SReprovar lançamento de efluente
      Dado que acesse o software 
      E autentique meu usuário
      Quando clico em Requisições
      E seleciono a opção Reprovar
      Então a solicitação é "<resultado>"    
      Exemplos:
        | novo do efluente | volume (em L) | local de lançamento | resultado  | 
        | efluente 22      | 100           | Rua do Aqui Pode    | reprovada  |
   #Regra: Requisições de tratamento realizadas ficam desabilitadas 
   #Cenário: Requisições concluídas são desabilitadas
      #Dado que acesse o software 
      #E autentique meu usuário
      #Quando clico em Requisições
      #E verifico a lista 
      #Então 
