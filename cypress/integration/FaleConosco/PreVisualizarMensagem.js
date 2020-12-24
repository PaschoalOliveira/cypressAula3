And("preencher todas as informações", (dataTable) => {
    dataTable.hashes().forEach(element => {
        cy.get('#edit-name').type(element.nome)
        cy.get('#edit-mail').type(element.email)
        cy.get('#edit-subject-0-value').type(element.assunto)
        cy.get('#edit-message-0-value').type(element.mensagem)
    })
})
When("avançar na Pré-visualização", () => { 
    cy.get('#edit-preview').click()
})
Then("a mensagem é visualizada", () => {
    cy.get('div[class="form-item js-form-item form-type-item js-form-type-item form-item- js-form-item- form-group"]').should('exist')
})