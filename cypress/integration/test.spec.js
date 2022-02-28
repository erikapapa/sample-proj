/// <reference types="Cypress" />

describe('first test', () => {
    it('first', () => {
        cy.visit('/')

        cy
            .wait(5000)
            .get('button')
            .click()

        cy.get('label')
            .contains('haha')




    })
})