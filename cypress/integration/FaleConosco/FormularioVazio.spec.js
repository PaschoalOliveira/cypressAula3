const inputID = '#ctl00_m_g_ccd698c8_b414_4622_8d78_0f0c84c9e849_ctl00'

And('não se forneça nenhuma informação', () =>{

})

Then('são indicados os campos obrigatórios', () =>{
    cy.get('[require="true"]').should('have.length', 10)
})