Given('acesso ao sistema da COELBA', () => {
    cy.visit('https://servicos.coelba.com.br/Pages/index.aspx')
})

And('acesso a seção de {string}',secao => {
    cy.get('a').contains(secao)
    .click({force:true})
})
