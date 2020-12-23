const getIframeDOM = () => {
    return cy.get('#ctl00_m_g_e9da6a09_4fac_49cc_9254_b19960fa1126 > iframe')
            .its('0.contentDocument')
            .its('body')
}

And("confirmar envio da mensagem", () =>{
    getIframeDOM().find('#btn_solicitar').click() 
})
And("é exibida uma mensagem de confirmação", () => {
    cy.get('body').wait(5000)
    getIframeDOM().find('.neotdheader').should('have.text','\n\t\t\t\t\t\t\t\tDenúncia Registrada com Sucesso.\n\t\t\t\t\t\t\t')
})
When("confirmar impressão", () =>{
    getIframeDOM().find('input[value="Imprimir"]').click() 
})
Then("uma seção para imprimir é exibida", () => {
    cy.get('#content').should('exist')
})