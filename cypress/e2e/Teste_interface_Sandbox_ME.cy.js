/// <reference types="Cypress"/>
import SandboxPage from '../support/Sandbox_ME/Index'
const baseUrl = 'https://sandbox.melhorenvio.com.br';


describe('Teste prático Frontend', () => {

    beforeEach('Acessa a Url a cada teste', () => {
        cy.visit(baseUrl +'/cadastre-se')
    });
    
    
    it('Valida a mensagem de erro dos campos vazios email e senha', () => {
        SandboxPage.assertMenssagensAlerta();
      });
  
    it('Valida a mensagem de alerta de Nome com caracteres especiais', ()=>{
        SandboxPage.assertNameInvalido();
    });
   
    it('Valida a mensagem de alerta do Email preenchido de forma incorreta',()=>{
        SandboxPage.assertEmailInvalido();
    });

    it('Teste fumaça',()=>{
        SandboxPage.assertCadastroValido();
    });
});