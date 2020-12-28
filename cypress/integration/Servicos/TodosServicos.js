When("tento exibir a seção Serviços", () => {
    cy.get('li[id="main-menu-link-content97f04969-d815-405e-a8fe-d1579a02bd07--2"]').click() 
})
Then("os serviços disponiveis são exibidos", () => {
    cy.get('div[class="page-list view view-servicos view-id-servicos view-display-id-page_3 js-view-dom-id-7ad874fa7292b6ee1af7803c4bca7d25c1c962bd473ba25c03e808dfe8a90fd8"]').should('be.visible')
})