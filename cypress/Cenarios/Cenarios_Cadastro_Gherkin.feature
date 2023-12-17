1 -Feature: Feature TESTE MELHOR ENVIO
 Feature Description: Login
 Como novo cliente da plataforma Melhor Envio
 O usuário deseja completar o Login
 Para ter acesso as funcionalidades da plataforma.
 
 
Cenários Positivos Primeira tela de cadastro:

1 - Cenário acesso a página
 Dado que o usuário não tenha conta
 E não tenha nenhum integração
 Quando o usuário acessar a página de cadastro Melhor Envio
 Então deve visualizar a página de cadastro

2 - Cenário de cadastro passando correntamente os dados nos inputs de Nome e Email:
Dado que o usuário preencha correntamente o input Nome
E preencha corretamente o input de Email
Quando clicar no botão Cadastrar
Então o usuário deve ser direcionado a próxima tela 

  
Cenários negativos primeira tela de cadastro:

1 - Cenário de não preenchimento dos inputs de Nome e Email:
 Dado que o usuário não preencha o input de Nome
 E Não preencha o input de Email
 Quando clicar no botão Cadastrar
 Então um alerta de "campos obrigatórios" deve ser mostrado abaixo do input Nome

2 - Cenário de preenchimento do input Nome com caracteres especiais:
 Dado que o usuário preencha o input nome com caracteres especiais
 Quando clicar no input Email 
 Então um alerta de "dados inválidos" deve ser mostrados abaixo do input Nome

3 - Cenário de preenchimento do input Nome com menos de 3 caracteres
 Dado que o usuário preencha o input Nome com menos de 3 caracteres
 Quando clicar no input Email
 Então um alerta de "dados inválidos" deve ser mostrado abaixo do input Nome

4 - Cenário de preenchimento do input Nome com mais de 56 caracteres 
 Dado que o usuário preencha o input nome com mais de 56 caracteres
 Quando clicar no input Email
 Então um alerta de "dados inválidos" deve ser mostrado abaixo do input Nome


5 - Cenário de preenchimento do input Email inválido:
 Dado que o usuário preencha o input Email de forma inválida
 Quando clicar no botão Cadastrar
 Então um alerta de "Endereço de Email inválido" deve ser mostrado abaixo do input Email

6 - Cenário de preenchimento do input Email com muitos caracteres:
 Dado que o usuário preencha o input Email com muitos caracteres
 Quando digitar chegar o limite do input
 Então o usuário deve ser impedido de continuar digitando

7 - Cenário de preenchimento do input Email com um email já cadastrado:
 Dado que o usuário preencha o input Email com um Email em uso
 Quando clicar no botão Cadastrar
 Então uma alerta de "Email já cadastrado" deve ser mostrado

8 - Cenário de não preenchimento dos inputs Nome e Email:
 Dado que o usuário não preencha o input Nome
 E não preencha o input de Email
 Então o botão de Cadastrar deve estar desabilitado

9 - Cenário de preenchimento de forma inválida os inputs Nome e Email:
 Dado que o usuário preencha de forma inválida o input Nome
 E preencha o input de Email de forma inválida o input Email
 Então o botão de Cadastrar deve estar desabilitado



Cenários Positivos tela de Dados de cadastro:

1 - Cenário de cadastro passando correntamente todos os dados solicitados no form:
 Dado que o usuário preencha correntamente o input Nome
 E preencha correntamente o input Sobrenome
 E preencha corretamente o input de CPF
 E preencha corretamente o input de Email
 E preencha corretamente o input de Senha
 E preencha corretamente o input de Data de nascimento
 E preencha corretamente o input Celular
 E Clicar no checkbox dos Termos
 Quando clicar no botão Avançar
 Então o usuário deve ser direcionado a próxima tela 

Cenários Negativos tela de Dados de cadastro:

1 - Cenário de não preenchimento dos inputs de Nome:
 Dado que o usuário não preencha o input de Nome
 Quando clicar no próximo input
 Então um alerta de "campos obrigatórios" deve ser mostrado abaixo do input Nome

2 - Cenário de preenchimento do input Nome com caracteres especiais:
 Dado que o usuário preencha o input nome com caracteres especiais
 Quando clicar no próximo input
 Então um alerta de "Dados inválidos" deve ser mostrados abaixo do input Nome

3 - Cenário de preenchimento do input Nome com menos de 3 caracteres
 Dado que o usuário preencha o input Nome com menos de 3 caracteres
 Quando clicar no próximo input
 Então um alerta de "Dados inválidos" deve ser mostrado abaixo do input Nome

4 - Cenário de preenchimento do input Nome com mais de 56 caracteres 
 Dado que o usuário preencha o input nome com mais de 56 caracteres
 Quando clicar no próximo input
 Então um alerta de "Dados inválidos" deve ser mostrado abaixo do input Nome

5 - Cenário de não preenchimento dos inputs de Sobrenome:
 Dado que o usuário não preencha o input de Sobrenome
 Quando clicar no próximo input
 Então um alerta de "campos obrigatórios" deve ser mostrado abaixo do input Sobrenome

6 - Cenário de preenchimento do input Sobrenomecom caracteres especiais:
 Dado que o usuário preencha o input Sobrenome com caracteres especiais
 Quando clicar no próximo input
 Então um alerta de "Dados inválidos" deve ser mostrados abaixo do input Sobrenome

7 - Cenário de preenchimento do input Sobrenome com menos de 3 caracteres:
 Dado que o usuário preencha o input Sobrenome com menos de 3 caracteres
 Quando clicar no próximo input
 Então um alerta de "Dados inválidos" deve ser mostrado abaixo do input Sobrenome

8 - Cenário de preenchimento do input Sobrenomecom mais de 56 caracteres:
 Dado que o usuário preencha o input Sobrenome com mais de 56 caracteres
 Quando clicar no próximo input
 Então um alerta de "Dados inválidos" deve ser mostrado abaixo do input Sobrenome

9 - Cenário de não preenchimento do input de CPF:
 Dado o usuário não preencha o input CPF
 Quando clicar no próximo input
 Então um alerta de "campo obrigatório" deve ser mostrado abaixo do input CPF

10 - Cenário de preenchimento de forma inválida do input de CPF:
 Dado o usuário não preencha corretamente input CPF
 Quando clicar no próximo input
 Então um alerta de "CPF inválido" deve ser mostrado abaixo do input CPF

11 - Cenário de preenchimento com poucos caracteres no input  CPF:
 Dado o usuário preencha poucos caracteres o input CPF
 Quando clicar no próximo input
 Então um alerta de "CPF inválido" deve ser mostrado abaixo do input CPF

12 - Cenário de não preenchimento do input Data de Nascimento:
 Dado o usuário não preencha o input Data de Nascimento
 Quando clicar no próximo input
 Então um alerta de "campo obrigatório" deve ser mostrado abaixo do input Data de Nascimento

13 - Cenário de preenchimento inválido no input Data de Nascimento:
 Dado o usuário  preencha de forma inválida o input Data de Nascimento
 Quando clicar no próximo input
 Então um alerta de "Data inválida" deve ser mostrado abaixo do input Data de Nascimento

14 - Cenário de preenchimento do input Data de Nascimento com uma data abaixo de 18 anos:
 Dado o usuário  preencha a Data de Nascimento com uma data abaixo de 18 anos
 Quando clicar no próximo input
 Então um alerta de "É necessário ter pelo menos 18 anos" deve ser mostrado abaixo do input Data de Nascimento

//Para não poluir o documento não repetirei os cenários de validação do input email pois são os mesmo da tela anterior, assim facilitando a leitura

15 - Cenário de não preenchimento do input de Senha:
 Dado que o usuário não preencha o input de Senha
 Quando quando clicar no próximo input
 Então a validação "Use entre 12 e 64 caracteres" deve ficar em vermelho

16 - Cenário de preenchimento do input de Senha com menos de 12 ou com mais de 64 caracteres:
 Dado que o usuário preencha o input de Senha com menos de 12 ou com mais de 64 caracteres 
 Quando quando clicar no próximo input
 Então a validação "Use entre 12 e 64 caracteres" deve ficar em vermelho

17 - Cenário de preenchimento do input de Senha com sequência Alfabética ou númerica:
 Dado que o usuário não preencha o input de Senha com uma sequência Alfabética ou númerica
 Quando quando clicar no próximo input
 Então a validação "Evite sequência como 123, abc" deve ficar em vermelho

18 - Cenário de preenchimento do input de Senha com repetições:
 Dado que o usuário não preencha o input de Senha repetições de caracteres
 Quando quando clicar no próximo input
 Então a validação "Evite repetições como AAA, BBB, $$$" deve ficar em vermelho

19 - Cenário de não preenchimento do input celular:
 Dado que o usuário não preencha o input Celular
 Quando quando clicar no próximo input
 Então um alerta de "campo obrigatório" deve aparecer abaixo do ibnput Celular

20 - Cenário de preenchimento do input celular de forma inválida: 
 Dado que o usuário preencha o input Celular de forma inválida
 Quando quando clicar no próximo input
 Então um alerta de "Número de celular inválido" deve aparecer abaixo do input Celular

21 - Cenário de preenchimento do input celular com um número já em uso: 
 Dado que o usuário preencha o input Celular com um número já sendo utilizado na plataforma
 Quando quando clicar no próximo input
 Então um alerta de "Número de celular já cadastrado" deve aparecer abaixo do input Celular

22 - Cenário de não marcação do Checkbox concordando com os Termos de uso: 
 Dado que o usuário não marque o Checkbox concordando com os termos
 Quando quando clicar no próximo input
 Então o texto dos termos de uso deve ficar em vermelho



Cenários Positivos tela Informações de Endereço:

1 - Cenário de cadastro passando correntamente todos os dados solicitados no form:
 Dado que o usuário preencha correntamente o input CEP
 E preencha correntamente o input Endereço
 E preencha corretamente o input de Número
 E selecione corretamente o dropdown do Estado
 E selecione corretamente o dropdown da Cidade
 Quando clicar no botão Avançar
 Então o usuário deve ser direcionado a próxima tela 


Cenários Negativos tela Informações de Endereço:

1 - Cenário de não preenchimento do input de CEP:
 Dado que o usuário não preencha o input de CEP
 Quando clicar no próximo input
 Então um alerta de "campo obrigatório" deve ser mostrado abaixo do input CEP

2 - Cenário de preenchimento inválido do input de CEP:
 Dado que o usuário preencha de forma inválida input de CEP
 Quando clicar no próximo input
 Então um alerta de "Dado inválido" deve ser mostrado abaixo do input CEP

3 - Cenário de preenchimento inválido do input de CEP:
 Dado que o usuário preencha de forma inválida input de CEP
 Quando clicar no próximo input
 Então um alerta de "Dado inválido" deve ser mostrado abaixo do input CEP

4 - Cenário de não preenchimento do input de Endereço:
 Dado que o usuário não preencha o input de Endereço
 Quando clicar no próximo input
 Então um alerta de "campo obrigatório" deve ser mostrado abaixo do input Endereço

5 - Cenário de não preenchimento do input de Número:
 Dado que o usuário não preencha o input de número
 Quando clicar no próximo input
 Então um alerta de "campo obrigatório" deve ser mostrado abaixo do input Número

6 - Cenário de preenchimento com caracteres especiais no input de Número:
 Dado que o usuário preencher o input número com caracteres especiais
 Quando clicar no próximo input
 Então um alerta de "O campo aceita apenas letras e números" deve ser mostrado abaixo do input Número

7 - Cenário de não seleção de um Estado:
 Dado que o usuário não seleciona um Estado no dropdown
 Quando clicar no próximo input
 Então um alerta de "campo obrigatório" deve ser mostrado abaixo do dropdown do Estado

8 - Cenário de não seleção de uma Cidade:
 Dado que o usuário não seleciona uma Cidade no dropdown
 Quando clicar no próximo input
 Então um alerta de "campo obrigatório" deve ser mostrado abaixo do dropdown da Cidade



Cenários Positivos de final de cadastrado:

1 - Cenário de cadastro Concluído:
 Dado que o usuário preencheu todos os forms de forma correta
 Então o usuário deve ser direcionado a tela de "Cadastro Concluído com sucesso!

