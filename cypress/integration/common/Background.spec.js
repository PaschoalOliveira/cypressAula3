Given('acesso ao sistema da COELBA', () => {
    cy.visit('https://servicos.coelba.com.br/Pages/index.aspx')
})

And('acesso a seção Onde Pagar Sua Conta',() => {
    cy.get('a[href="/Pages/Locais-de-Pagamento.aspx"]')
        .invoke('show')
        .click()
})