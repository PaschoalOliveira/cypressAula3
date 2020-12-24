Given('o acesso ao sistema do DETRAN-BA', () => {
    cy.visit("http://www.detran.ba.gov.br/"); //Entrando no site
})
And("se dirigir à seção Fale Conosco", () => {
    cy.get('li[id="main-menu-link-contentd2222250-e4f2-4420-8426-3ba855476333--2"]').click()
}) 