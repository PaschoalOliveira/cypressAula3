#language: en

Feature: Uso do software para enviar solicitções e receber notificações sobre lançamento de novos influentes

Background:
    Given que eu estou logado no software


Scenario: Chegada de notificações para o CEO

Given dentro da tela de notificações
When verifico se a notificações sobre solicitações de adição de um novo químico
Then vejo a notificação que chegou


Scenario: Lider de Porcessos verifica se solicitações de adição de um novo influente

Given dentro da tela de autorizar influentes
When verifico se a notificações sobre solicitações de autorização 
Then autorizo ou rejeito a solicitação enviada


Scenario: Engenheiro Sanitasrista envia uma solicitação de adição de um novo influente

Given dentro da tela de solicitar efluentes
When solicito onde será lançado o efluente final
Then uma notificação é enviada para o Lider de processos


Scenario: Cliente verifica se a notificações sobre onde será lançado o efluente

Given dentro da tela de notificações
When verifico se a notificações sobre onde será lançado o efluente
Then vejo a notificação que chegou
