const inputID = '#ctl00_m_g_ccd698c8_b414_4622_8d78_0f0c84c9e849_ctl00'

And('preencher as informações pessoais',dataTable => {

    dataTable.hashes().forEach(data => {
        /*cy.get(inputID+'_txtContract')
        .type(data.contrato)*/
        cy.get(inputID+'_txtName')
        .type(data.nome)
        cy.get(inputID+'_txtTelephone')
        .type(data.telefone)
        cy.get(inputID+'_txtEmail')
        .type(data.email)
    })

})

And('preencher as informações de localização', dataTable => {

    dataTable.hashes().forEach(data => {
        cy.get(inputID+'_txtCep')
        .type(data.cep)
        cy.get(inputID+'_ddlEstado')
        .select(data.estado)
        cy.get(inputID+'_txtAddress')
        .type(data.endereco)
        cy.get(inputID+'_ddlMunicipio')
        .select(data.cidade)
        cy.get(inputID+'_ddlBairro')
        .select(data.bairro)
    })

})

And ('preencher a mensagem referente ao {string}',(assunto,dataTable) => {
    
    cy.get(inputID+'_ddlAsuntos')
    .select(assunto)

    dataTable.hashes().forEach(data => {
        cy.get(inputID+'_txtMessage')
        .type(data.mensagem)
    })
})


When('validar as informações', () => {
    cy.get('#textCaptcha')
    .invoke('text')
    .then(text => {
        console.log(text)
        cy.get(inputID+'_txtCaptcha')
        .type(text)
    })
})


And('confirmar envio da mensagem', () => {
    cy.get(inputID+'_btnEnviar')
    .click()
})

Then('é redirecionado para o Portal do Credenciado', () => {
    cy.url()
    .should('contain','login.aspx')
})

