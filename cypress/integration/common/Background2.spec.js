Given('acesso ao sistema da COELBA', () => {
    cy.visit('https://servicos.coelba.com.br/Pages/index.aspx')
})

And('acesso a seção de "Canais de Atendimento"',() => {
    cy.get('a[class="breadcrumbCurrentNode"]')
        .invoke('show')
        .click()
})

And('acesso a seção de "Denúncia de Irregularidade - Gato de Energia"',() => {
 
})

And('preencher as informações', (dataTable) => {
  
})