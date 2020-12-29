And("preencher as informações {string}, {string}, {string} e {string} de forma incorreta", (nome, email, assunto, msg) => {
        cy.get('#edit-name').type(nome)
        cy.get('#edit-mail').type(email)
        cy.get('#edit-subject-0-value').type(assunto)
        cy.get('#edit-message-0-value').type(msg)
})
When("confirmar o envio da mensagem", () => {
    cy.get('button[id="edit-submit"]').click()
})
Then("procuro pela mensagem de erro", () => {
    //só foi possível testar uma mensagem de alerta por vez 
    //cy.on('window:alert', (msg) => {
    //   expect(msg).to.equal('Inclua um "@" no endereço de e-mail. ornitorrinco está com um "@" faltando')
    //})
          
    cy.on('window:alert', (msg) => {
       expect(msg).to.equal('Insira uma parte depois de "@". anel@ está incompleto.')
    })

})