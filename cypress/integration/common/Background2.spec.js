Given('acesso ao sistema da COELBA', () => {
    cy.visit('https://servicos.coelba.com.br/Pages/index.aspx')
})

And('preencher as informações', (dataTable) => {
    dataTable.hashes().forEach(inf => {
    cy.get('#end_logradouro').select(inf.Endereço)
    cy.get('#end_numero').select(inf.Número)
    cy.get('#end_bairro').select(inf.Bairro)
    cy.get('#end_cidade').select(inf.Cidade)
    cy.get('#ponto_referencia').select(inf.Ponto_de_Referência)
    cy.get('#texto_denuncia').select(inf.Texto_para_Denúncia)
    })
})