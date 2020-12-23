const getIframeDOM = () => {
    return cy.get('#ctl00_m_g_e9da6a09_4fac_49cc_9254_b19960fa1126 > iframe')
            .its('0.contentDocument')
            .its('body')
}

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

        getIframeDOM().find('#end_logradouro').type(inf.Endereço)
        getIframeDOM().find('#end_numero').type(inf.Número)
        /*cy.get('#end_bairro').type(inf.Bairro)
        cy.get('#end_cidade').type(inf.Cidade)
        cy.get('#ponto_referencia').type(inf.Ponto_de_Referência)
        cy.get('#texto_denuncia').type(inf.Texto_para_Denúncia)*/
    })
})