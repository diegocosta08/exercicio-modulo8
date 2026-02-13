    #language: pt

    Funcionalidade: Login do cliente na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar os meus pedidos

    Contexto:
        Dado que estou na página de login da EBAC-SHOP

    #------------------------------------------------------------------------------------------------------------

    Cenário: Login com dados válidos
        Quando informo o email "cliente@ebac.com.br" e a senha "123456"
        E clico no botão "entrar"
        Então devo ser autenticado com sucesso
        E devo visualizar os meus pedidos

    Cenário: Impedir login com senha inválida
        Quando informo o email "cliente@ebac.com.br" e a senha "senha_errada"
        E clico no botão "entrar"
        Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"

    Cenário: Impedir login com email inválido
        Quando informo o email "email_inválido" e a senha "123456"
        E clico no botão "entrar"
        Então o sistema deve exibir a mensagem "Email inválido"

    Cenário: Impedir login com campos obrigatórios vazios
        Quando clico no botão "entrar"
        Então o sistema deve exibir a mensagem "Informe email e senha"

    #------------------------------------------------------------------------------------------------------------

    Esquema do Cenário: Tentativas de login com combinações inválidas
        Quando informo o email "<email>" e a senha "<senha>"
        E clico no botão "entrar"
        Então o sistema deve exibir a mensagem "<mensagem>"

        Exemplos:
            | email               | senha       | mensagem                   |
            | cliente@ebac.com.br | errado      | Usuário ou senha inválidos |
            | email_inválido      | 123456      | Email inválido             |
            |                     | 123456      | Informe email e senha      |
            | cliente@ebac.com.br |             | Informe email e senha      |