When("preencher todas as informações", (dataTable) => {
    dataTable.hashes().forEach(element => {
        cy.get('#edit-name').type(element.nome)
        cy.get('#edit-mail').type(element.email)
        cy.get('#edit-subject-0-value').type(element.assunto)
        cy.get('#edit-message-0-value').type(element.mensagem)
    })
})
And("avançar na solicitação", () => {
    cy.get('button[id="edit-submit"]').click()
})
Then("a mensagem é enviada", () => {
    cy.get('div[class="alert alert-success alert-dismissible"]').should('have.value','Sua mensagem foi enviada.')
})