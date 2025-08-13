#language: pt

Funcionalidade: Adicionar item ao carrinho
            Como cliente da EBAC-SHOP
            Quero adicionar itens ao carrinho
            Para visualizar no meu carrinho
            E finalizar minha compra

Contexto: 
Dado que eu acesse a página da EBAC-SHOP

Cenário: Adicionar item ao carrinho
Quando selecionar tamanho e cor do produto
E clicar em comprar 
Então o item deve aparecer no carrinho

Cenário: Adicionar 11 itens de um mesmo produto ao carrinho
Quando selecionar tamanho e cor do produto
E informar a quantidade 11
Então deve apresentar mensagem "Limitado a quantidade de 10 itens por cliente"
E náo pode deixar adicionar ao carrinho

Cenário: Carrinho com mais de R$ 990,00
Quando o valor do carrinho atingir R$ 980,00
E ao tentar adicionar um produto de R$20,00 ou mais
Então deve apresentar mensagem "Valor do carrinho não pode ultrapassar R$990,00"

Cenário: Carrinho com valor entre R$200 e R$600
Quando o valor do carrinho atingir R$ 300,00
E clicar em "Concluir Compra" 
Então deve apresentar automaticamente o cupom de 10% de desconto no campo reservado para cupom


