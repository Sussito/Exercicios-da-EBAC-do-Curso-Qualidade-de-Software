Feature: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
e escolher a quantidade
Para depois inserir no carrinho

Scenario: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Given  que eu selecione um determinado produto
E a quantidade
When eu clicar no botão Comprar 
Then deve exibir um alerta "Cor, tamanho e quantidade são obrigatórios"

Scenario: Deve permitir apenas 10 produtos por venda
Given que eu selecione mais que 10 produtos
When eu clicar no botão de quantidade e ultrapassar 10 quantidades
Then deve exibir um alerta "Permitido apenas 10 produtos por venda"

Scenario: Quando eu clicar no botão “limpar” deve voltar ao estado original
Given que eu queira realizar novas seleções no produto
When eu clicar no botão LIMPAR
Then deve exibir um alerta "Tem certeza que deseja limpar? Ao confirmar o item voltará na configuração original."

