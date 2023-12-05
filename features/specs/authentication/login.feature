# language: pt

@full_regression
@login
Funcionalidade: Login no Front ServeRest
  Sendo um usuário da aplicação ServeRest
  Gostaria de poder realizar Login
  Para poder visualizar produtos e cadastros

Contexto: Começa na Home Page
  Dado que esteja na Home Page

Cenário: Realizar login com sucesso
  Quando realizar login com e-mail "fulano@qa.com" e senha "teste"
  Então deverá realizar o login com sucesso
