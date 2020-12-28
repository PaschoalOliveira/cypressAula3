const getIframeDOM = () => {
    return cy.get('#ctl00_m_g_e9da6a09_4fac_49cc_9254_b19960fa1126 > iframe')
            .its('0.contentDocument')
            .its('body')
}

When("confirmar envio da mensagem", () =>{
    getIframeDOM().find('#btn_solicitar').click() 
})

Then("é exibida uma mensagem de confirmação, o protocolo e a data da denúncia", () => {
    cy.get('body').wait(5000)
    getIframeDOM().find('.neotd').contains('Protocolo')
    getIframeDOM().find('.neotd').contains('Data')
    getIframeDOM().find('.neotdheader').should('have.text','\n\t\t\t\t\t\t\t\tDenúncia Registrada com Sucesso.\n\t\t\t\t\t\t\t')
    //getIframeDOM().find('td[align="right"]').should('have.text','ProtocoloData')

})