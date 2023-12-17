# Teste-QA-Pleno-Melhor-Envio
<br/>Teste automatizado Frontend e Backend para a vaga de QA Pleno Melhor Envio<br/>
<br/> A primeira parte do teste consiste em criar os cenários de teste, cenários que estão dentro da pasta Cypress> Cenários > Cenários_cadastro_gherkin, foi utilizado o plugin "Cucumber (Gherkin) Full Support" para melhor visualização<br/> 
<br/> 
![gherkin](https://github.com/rauulsilveira/Teste-QA-Pleno-Melhor-Envio/assets/54366178/8bf77b8d-cb50-46bc-a1b3-62527f405a8d)

<br/> 
<br/> A segunda parte do teste consiste em criar 2 cenários de teste da lista de cenários levantados, para auxiliar na geração de dados foi utilizado a API Faker.br, então não devemos ter repetição no que foi gerado assim não deve quebrar nenhum teste por repetição de informação, foi utilizado a metodologia Page objects, foi utilizado um teste de fumaça que abrange todo o fluxo de cadastro então foi mapeado a maioria dos elements <br/>
<br/> 
![cenarios frontend](https://github.com/rauulsilveira/Teste-QA-Pleno-Melhor-Envio/assets/54366178/e6925132-2a7c-4c17-833d-6788ccc32b1f)

<br/> 
<br/> A terceira parte do teste consiste no teste da API de cadastro Melhor Envio, onde também foi utlizado a API faker.br porém não consegui ajustar o formato do número celular gerado pelo faker então criei uma pequena função para gerar um número de celular aleatório, assim não caindo na validação "validate_phone" e deixando os testes assertivos<br/> 
<br/> 
![cenarios back](https://github.com/rauulsilveira/Teste-QA-Pleno-Melhor-Envio/assets/54366178/667f92cc-5da0-4905-9db6-0fd34956c9cc)

<br/> 

<br/> A quarta parte do teste é incluir uma solução de reporte dos testes automatizados, nesse caso poderia ter feito através do Qase por ser uma ferramenta que estamos usando atualmente dentro da Melhor Envio porém optei por uma ferramente diferente, então foi utilizado o Cypress Cloud e conectado via Slack, há várias integrações exemplo o Jira mas alguns são planos pagos <br/>
<br/> A última parte do teste era gerar um Workflow via Github e assim foi feito porém como foi solicitado um repositório privado não foi possível ativar o Git pages<br/>
<br/>
![git actions](https://github.com/rauulsilveira/Teste-QA-Pleno-Melhor-Envio/assets/54366178/54024dfc-6255-4ab9-b770-2be2c3b301c4)

<br/>

<br/> Após clonar o projeto basta utlizar o comando "npm install" e após a instalação utilizar o comando npm run cypress:open e rodar os testes <br/>

