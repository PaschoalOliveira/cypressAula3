When("confirmar envio da mensagem", () =>{
    cy.get('input[id="btn_solicitar"]').click() 
})

Then("é exibida uma mensagem de confirmação, o protocolo e a data da denúncia", () => {
    cy.get('td[class="neotdheader"]').contains('Denúncia Registrada com Sucesso.')
    cy.get('td[class="neotd"]').should('exit')
    cy.get('tr[class="tablerowcontent"]').should('exit')
})