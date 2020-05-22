/// <reference types="cypress" />

describe("Parabank Login",()=>{

    beforeEach("Launch URL",()=>{

        cy.visit("https://parabank.parasoft.com/parabank/index.htm")

    })

    it("Login Test",()=>{

        cy.get(':nth-child(2) > .input').type("john")
        cy.get(':nth-child(4) > .input').type("demo {enter}")

        cy.get('#leftPanel > ul > :nth-child(8) > a').click()

    })
})