#language: pt

Funcionalidade: API de Cupons
            Como admin da EBAC-SHOP
            Quero criar um serviço de cupom
            Para poder listar e cadastrar os cupons

Contexto: 
Dado que eu esteja autenticado na API com o usuário "admin_ebac" e senha "@admin!&b@c!2022"
E o token Authorization seja "Basic YWRtaW5fZWJhYzpAYWRtaW4hJmJAYyEyMDIy"             

Cenário: Listar todos os cupons cadastrados
Quando eu fizer uma requisição GET para o endpoint /wp-json/wc/v3/coupons
Então o sistema deve retornar a lista de cupons cadastrados

Cenário: Buscar cupom por ID existente
Quando eu fizer uma requisição GET para /wp-json/wc/v3/coupons/6411
Então deve retornar os dados do cupom com ID 6411

Cenário: Buscar cupom por ID inexistente
Quando eu fizer uma requisição GET para /wp-json/wc/v3/coupons/100
Então deve retornar status 400

Cenário: Criar um novo cupom com dados válidos
Quando eu enviar uma requisição POST para /wp-json/wc/v3/coupons
E o body da requisição contiver:
    | code          | Cupom050825            |
    | amount        | 10.00                  |
    | discount_type | fixed_product          |
    | description   | Cupom de teste  Kelvin |
Então o sistema deve cadastrar o cupom com sucesso

Cenário: Tentar criar cupom com código repitido
Quando eu tentar cadastrar outro cupom com o mesmo código "Cupom050825"
Então de apresentar mensagem "O Código de cupom já existe"

Cenário: Criar cupom sem campos obrigatórios
Quando eu enviar uma requisição POST para /wp-json/wc/v3/coupons
E o body da requisição estiver faltando o "Code":
    | amount        | 10.00                  |
    | discount_type | fixed_product          |
    | description   | Cupom de teste  Kelvin |

  Então o sistema deve rejeitar a criação do cupom

