describe('My First Test', () => {
  it('Does not do much!', () => {
    expect(true).to.equal(true);
  })
})

describe('My Second Test', () => {
  it('Does not do much!', () => {
    expect(true).to.equal(false);
  })
})

describe('My Third Test', () => {
  it('Compares two strings', () => {
    expect('hello').to.equal('hello');
  })
})

describe('My Fourth Test', () => {
  it('Visits the History Home', () => {
    cy.viewport(1920, 1080);
    cy.visit('https://www.history.com');
    cy.contains('Shows').click();
    cy.url().should('include', '/shows');
  })
})