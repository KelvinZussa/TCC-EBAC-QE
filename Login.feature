#language: pt

Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

Contexto: 
Dado que eu acesse a página da EBAC-SHOP       

Cenário: Usuário ativo faz login com sucesso
Quando eu digitar um usuário ativo
E a senha correta
Então a plataforma deve permitir o acesso



Esquema do Cenário: Login (autenticação) com dados válidos
            Quando digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario                  | senha   | mensagem             |
            | "kelvinzussa@gmail.com"  | "12345" | "Bem vindo Kelvin"   |
            | "jorgezussa@gmail.com"   | "12345" | "Bem vindo Jorge"    |
            | "otaviozussa@gmail.com"  | "12345" | "Bem vindo Otavio"   |
            | "viniciuszussa@gmail.com" | "12345" | "Bem vindo Vinicius" |

Cenário: Dados de autenticação inválidos
Quando eu digitar o usuário "kelvinzussa@gmail.com"
E senha "67890"
Entao deve exibir a mensagem de alerta "Usário ou senha inválidos"            

Cenário: Bloqueio temporário após 3 tentativas erradas de login
Quando já foi informado errado 2 vezes usuário e senha
E seja informado pela 3ª vez 
Então o sistema deve fazer o bloqueio do login por 15 minutos
