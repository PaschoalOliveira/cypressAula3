Given('acesso ao sistema da COELBA', () => {
    cy.visit('https://servicos.coelba.com.br/Pages/index.aspx')
})

And('acesso a seção {string}',secao => {
    cy.get('a').contains(secao)
    .click()
})

And('acesso a seção Onde Pagar Sua Conta',() => {
    cy.get('a[href="/Pages/Locais-de-Pagamento.aspx"]')
        .invoke('show')
        .click()
})