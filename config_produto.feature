    #language: pt

    Funcionalidade: Configurar produto antes de adicionar no carrinho
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    Para escolher a quantidade
    E depois inserir no carrinho

    Contexto:
        Dado que estou na página de um produto

    #------------------------------------------------------------------------------------------------------------

    Cenário: Adicionar produto ao carrinho com tamanho, cor e quantidade preenchidas
        Quando seleciono o tamanho "M", a cor "Preto" e a quantidade 2
        Então o sistema deve permitir adicionar o produto ao carrinho

    Cenário: Impedir adicionar ao carrinho sem selecionar tamanho
        Quando seleciono a cor "Preto" e escolho a quantidade 1
        Então o sistema deve exibir a mensagem "Selecione um tamanho"

    Cenário: Impedir adicionar ao carrinho sem selecionar cor
        Quando seleciono o tamanho "G" e escolho a quantidade 1
        Então o sistema deve exibir a mensagem "Selecione uma cor"

    #------------------------------------------------------------------------------------------------------------

    Cenário: Permitir adicionar ao carrinho com a quantidade máxima permitida
        Quando seleciono o tamanho "M", a cor "Branco" e a quantidade 10
        Então o sistema deve permitir adicionar o produto ao carrinho

    Cenário: Impedir adicionar ao carrinho com a quantidade acima do permitido
        Quando seleciono o tamanho "M", a cor "Branco" e a quantidade 11
        Então o sistema deve exibir a mensagem "Quantidade máxima permitida é 10"

    #------------------------------------------------------------------------------------------------------------

    Cenário: Limpar as seleções e retornar ao estado original
        Quando seleciono o tamanho "P", a cor "Azul" e a quantidade 3
        E clico no botão "limpar"
        Então o tamanho, a cor e a quantidade devem voltar ao estado original

    #------------------------------------------------------------------------------------------------------------

    Esquema do Cenário: Adicionar produto ao carrinho com diferentes combinações válidas
        Quando seleciono o tamanho "<tamanho>", a cor "<cor>" e a quantidade "<quantidade>"
        Então o sistema deve permitir adicionar o produto ao carrinho

        Exemplos:
            | tamanho | cor      | quantidade |
            | P       | Branco   | 1          |
            | M       | Preto    | 2          |
            | G       | Azul     | 5          |
            | GG      | Vermelho | 10         |