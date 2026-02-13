    #language pt:

    Funcionalidade: Concluir cadastro do cliente
    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

    Contexto:
        Dado que estou na página de cadastro da EBAC-SHOP

    #------------------------------------------------------------------------------------------------------------

    Cenário: Concluir cadastro com todos os dados obrigatórios preenchidos
        Quando informo o nome "Diego Costa", o email "cliente@ebac.com.br" e a senha "123456"
        E confirmo a senha "123456"
        E clico no botão "cadastrar"
        Então o sistema deve cadastrar o cliente com sucesso
        E devo conseguir finalizar minha compra

    #------------------------------------------------------------------------------------------------------------

    Cenário: Impedir cadastro com email em formato inválido
        Quando informo o nome "Diego Costa", o email "diego.com.br" e a senha "123456"
        E confirmo a senha "123456"
        E clico no botão "cadastrar"
        Então o sistema deve exibir a mensagem "E-mail inválido"

    #------------------------------------------------------------------------------------------------------------

    Esquema do Cenário: Validar formato de email no cadastro
        Quando informo o nome "Diego Costa", o email "<email>" e a senha "123456"
        E confirmo a senha "123456"
        E clico no botão "cadastrar"
        Então o sistema deve exibir a mensagem "<mensagem>"

        Exemplos:
            | email        | mensagem        |
            | diego.com.br | E-mail inválido |
            | diego@       | E-mail inválido |
            | @ebac.com.br | E-mail inválido |
            | diego@ebac   | E-mail inválido |