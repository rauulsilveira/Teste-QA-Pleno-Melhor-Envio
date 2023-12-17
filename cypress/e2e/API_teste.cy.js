/// <reference types="Cypress"/>
var faker = require('faker-br');

faker.locale = 'pt_BR'

//Função para gerar um número de celular válido, com o faker não consegui acertar o format correto
function gerarNumeroCelular() {
    const ddd = 119
    const parteNumerica = Math.floor(Math.random() * 8000000) + 900000;
  
    return `(${ddd}) 8${parteNumerica}`;
  }
  const numeroCelular = gerarNumeroCelular();


describe('Teste prático API', () => {
    var firstName = faker.name.firstName();
    var lastName = faker.name.lastName();
    var email = faker.internet.email();
    var CPF = faker.br.cpf();
    var Cel = faker.phone.phoneNumber()

    it('Espera o status code 201', () => {
    cy.request({
        method: 'POST',
        url: 'https://sandbox.melhorenvio.com.br/api/v2/users',
        headers: {
            'Accept': "application/json",
            'Content-Type': "application/json"
        },
        body: 
            {
                "firstname": firstName,
                "lastname": lastName,
                "email": email,
                "document": CPF,
                "birthdate": "1990-01-01",
                "phone_mobile": numeroCelular,
                "password":"a1a2a3a4a5a6",
                "terms":true
                
                }
        
        }).then((response) =>{
            expect(response.status).to.equal(201);
            expect(response.body.token).to.exist
           
        });
    
      });
      
      
      it('Espera o status code 422', () => {
        var firstName1 = faker.name.firstName();
        var lastName1 = faker.name.lastName();
        var email1 = faker.internet.email();
        var Cel1 = faker.phone.phoneNumber();
      cy.request({
            method: 'POST',
            url: 'https://sandbox.melhorenvio.com.br/api/v2/users',
            failOnStatusCode: false,
            headers: {
                'Accept': "application/json",
                'Content-Type': "application/json"
            },
            body: {

            "firstname": firstName1,
            "lastname": lastName1,
            "email": email1,
            "document": " ",
            "birthdate": "1990-01-01",
            "phone_mobile": Cel1,
            "password": "a1a2a3a4a5a6",
            "terms": true
            
            }
         }).then((response) =>{
             expect(response.status).to.equal(422);
             expect(response.body.message).to.equal('O campo CPF é obrigatório. (and 1 more error)');
            
         });
     
       });
});

