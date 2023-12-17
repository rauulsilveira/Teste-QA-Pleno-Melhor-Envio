/// <reference types="Cypress"/>
import { elements as Sandbox_ME  } from './Elements'
var faker = require('faker-br');
const baseUrl = 'https://sandbox.melhorenvio.com.br';

class SandboxPage {
	visitMinhasVendas(baseUrl = 'https://sandbox.melhorenvio.com.br') {
		cy.visit(baseUrl, {
			
		});
	};
assertMenssagensAlerta() {
    cy.get(Sandbox_ME.buttonCadastro)
    .click();
    cy.get(Sandbox_ME.nameEmptyError)
    .should('exist', 'Campo obrigatório! Não esqueça de preenchê-lo.');

    cy.get(Sandbox_ME.emailEmptyError)
    .should('exist', 'Campo obrigatório! Não esqueça de preenchê-lo.');
    };


assertNameInvalido(){
    cy.get(Sandbox_ME.inputName)
    .click()
    .clear()
    .type('raul @cacio');

    cy.get(Sandbox_ME.inputEmail)
    .click();

    cy.get(Sandbox_ME.nameEmptyError)
    .should('have.text', 'Dado inválido! Verifique sua resposta.');
};

assertEmailInvalido(){
    cy.get(Sandbox_ME.inputEmail)
    .click()
    .clear()
    .type('raulacaciohotmail.com');

    cy.get(Sandbox_ME.inputName)
    .click();
    
    cy.get(Sandbox_ME.emailEmptyError)
    .should('have.text', 'Endereço de e-mail inválido! Verifique sua resposta.');
};

assertCadastroValido(){
    //Primeira parte do cadastro
    var firstName = faker.name.firstName();
    var lastName = faker.name.lastName();
    cy.get(Sandbox_ME.inputName)
    .click()
    .clear()
    .type(firstName + " " + lastName);
    
    var email = faker.internet.email();
    cy.get(Sandbox_ME.inputEmail)
    .click()
    .clear()
    .type(email);

    cy.get(Sandbox_ME.buttonCadastro)
    .click();

    //Segunda parte do cadastro
    var CPF = faker.br.cpf();
    cy.get(Sandbox_ME.inputCPF)
    .click()
    .clear()
    .type(CPF);

    cy.get(Sandbox_ME.inputDtNC)
    .click()
    .clear()
    .type('12/06/1996');

    var Cel = faker.phone.phoneNumber();
    cy.get(Sandbox_ME.inputPhone)
    .click()
    .clear()
    .type("11 99" + Cel);

    var senha = faker.internet.password();
    cy.get(Sandbox_ME.inputPassword)
    .click()
    .clear()
    .type(senha);

    cy.get(Sandbox_ME.checkBoxTerm)
    .check({force: true});

    cy.get(Sandbox_ME.buttonAdvance)
    .click();

    //Última parte do cadastro

    cy.get(Sandbox_ME.inputCEP)
    .click()
    .clear()
    .type('96045180');

   cy.get(Sandbox_ME.inputNumber)
   .click()
   .clear()
   .type(34);

   cy.get(Sandbox_ME.buttonAdvance)
   .click();

    cy.get(Sandbox_ME.sucessMensage)
    .should('have.text','\n    Cadastro concluído com sucesso!\n  ');

};


} export default new SandboxPage();