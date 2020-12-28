And("preencher as informações {string}, {string}, {string} e {string} de forma incorreta", (nome, email, assunto, msg) => {
        cy.get('#edit-name').type(nome)
        cy.get('#edit-mail').type(email)
        cy.get('#edit-subject-0-value').type(assunto)
        cy.get('#edit-message-0-value').type(msg)
})
When("confirmar o envio da mensagem", () => {
    cy.get('button[id="edit-submit"]').click()
})
Then("procuro pela mensagem {string} ", (mensagemError) => {
    //validar msg de erro
})