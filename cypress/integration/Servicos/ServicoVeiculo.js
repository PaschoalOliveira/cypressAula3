When("tento visualizar a aba Serviços para veículos", () => {
    cy.get('li[id="main-menu-link-content97f04969-d815-405e-a8fe-d1579a02bd07--2"]').trigger('mouseover').contains('Para Veículos').click({force: true})
})
Then("são exibidos os serviços para veículos", () => {
    cy.get('div[class="page-list view view-servicos view-id-servicos view-display-id-page_2 js-view-dom-id-e47aecefee3e986d2d31db868de77ceb1e3c943bc56bc17ce7fa6828a47f17e6"]').should('be.visible')
})