Feature: Login na Plataforma

Como cliente da EBAC-SHOP
Quero fazer o login na plataforma 
Para visualizar meus pedidos

Background: 
Given eu acesse a página de autenticação do Portal EBAC-SHOP

Scenario Outline: Autenticar multiplos usuários
When eu digitar <usuario>
And a <senha>
Then deve exibir a <mensagem>

Examples:
|usuario|senha|mensagem|
|"john@ebac.com.br"|"john123"|""|
|"john@ebac.com.br"|"123johnus"|"Usuário ou senha inválidos"|
|"mary@ebac.com.br"|"mary123"|""|
|"mary@ebac.com.br"|"123mary"|"Usuário ou senha inválidos"|

