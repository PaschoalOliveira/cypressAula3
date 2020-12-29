When("tento exibir a seção Serviços para condutores", () => {
    cy.get('li[id="main-menu-link-content97f04969-d815-405e-a8fe-d1579a02bd07--2"]').trigger('mouseover').contains('Para Condutores').click({force: true})
})
Then("são exibidos os serviços para condutores", () => {
    cy.get('div[class="page-list view view-servicos view-id-servicos view-display-id-page_1 js-view-dom-id-c36a9707e2935a4b0733748fcf927473f75731806c5f3fc561f0eff2c8bd5f42"]').should('be.visible')
})