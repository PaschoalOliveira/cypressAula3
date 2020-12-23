Given('acesso ao sistema da COELBA', () => {
    cy.visit('https://servicos.coelba.com.br/Pages/index.aspx')
})
And('acesso a seção de {string}',secao => {
    cy.get('a').contains(secao)
    .click({force:true})
})
And('acesso a seção de {string}',secao => {
    cy.get('a').contains(secao)
    .click({force:true})
})
And('preencher as informações', (dataTable) => {
    //console.log(dataTable.hashes())
    dataTable.hashes().forEach(inf => {
        //cy.xpath('.//*[@id="end_logradouro"]').type(inf.Endereço)
        cy.get('#end_numero').type(inf.Número)
        cy.get('#end_bairro').type(inf.Bairro)
        cy.get('#end_cidade').type(inf.Cidade)
        cy.get('#ponto_referencia').type(inf.Ponto_de_Referência)
        cy.get('#texto_denuncia').type(inf.Texto_para_Denúncia)
    })
})