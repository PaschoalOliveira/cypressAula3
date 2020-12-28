And("preencher as informações {string}, {string}, {string} e {string}", (nome, email, assunto, msg) => {
    if(nome == "" || email == "" || assunto == "" || msg == ""){
        return;
    }
        cy.get('#edit-name').type(nome)
        cy.get('#edit-mail').type(email)
        cy.get('#edit-subject-0-value').type(assunto)
        cy.get('#edit-message-0-value').type(msg)
})
When("prosseguir no envio", () => {
    cy.get('button[id="edit-submit"]').click()
})
Then("aparece uma mensagem de alerta", () => {
    cy.on('window:alert', (mensagem) => {
        expect(mensagem).to.equal('Preencha este campo.');
    })
})