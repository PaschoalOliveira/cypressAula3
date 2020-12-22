When("preencho a localização", (dataTable) =>{
    dataTable.hashes().forEach(info => {
        cy.get('[id="ctl00_SPWebPartManager1_g_659c1432_9eb1_4a7c_97f6_3c427e26493b_ctl00_ddlMunicipio"]')
            .select(info.cidade)
        cy.get('[id="ctl00_SPWebPartManager1_g_659c1432_9eb1_4a7c_97f6_3c427e26493b_ctl00_ddlBairro"]')
            .select(info.bairro)
    })
})

Then("consigo ver os locais de pagamento mais próximos", () => {
    cy.get('.listItemsDefault')
        .should('exist')
})