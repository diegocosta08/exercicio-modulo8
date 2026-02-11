    #language: pt

    Funcionalidade: Configurar produto antes de adicionar no carrinho
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    Escolher a quantidade
    Para depois inserir no carrinho

    Background:
    Quando que estou na página de um produto

    Scenario: Adicionar produto ao carrinho com tamanho, cor e quantidade preenchidas
    Quando seleciono o tamanho "M"
    E seleciono a cor "Preto"
    E escolho a quantidade 2
    Então o sistema deve permitir adicionar o produto ao carrinho

    Scenario: Impedir adicionar ao carrinho sem selecionar tamanho
    Quando seleciono a cor "Preto"
    E escolho a quantidade 1
    Então o sistema deve exibir a mensagem "Selecione um tamanho"

    Scenario: Impedir adicionar ao carrinho sem selecionar cor
    Quando seleciono o tamanho "G"
    E escolho a quantidade 1
    Então o sistema deve exibir a mensagem "Selecione uma cor"

    #------------------------------------------------------------------------------------------------------------

    Scenario: Permitir adicionar ao carrinho com a quantidade máxima permitida
    Quando seleciono o tamanho "M"
    E seleciono a cor "Branco"
    E escolho a quantidade 10
    Então o sistema deve permitir adicionar o produto ao carrinho

    Scenario: Impedir adicionar ao carrinho com a quantidade acima do permitido
    Quando seleciono o tamanho "M"
    E seleciono a cor "Branco"
    E escolho a quantidade 11
    Então o sistema deve exibir a mensagem "Quantidade máxima permitida é 10"

    #------------------------------------------------------------------------------------------------------------

    Scenario: Limpar as seleções e retornar ao estado original
    Quando seleciono o tamanho "P"
    E seleciono a cor "Azul"
    E escolho a quantidade 3
    E clico no botão "limpar"
    Então o tamanho deve voltar ao estado original
    E a cor deve voltar ao estado original
    E a quantidade deve voltar ao estado original

    #------------------------------------------------------------------------------------------------------------

    Scenario Outline: Adicionar produto ao carrinho com diferentes combinações válidas
            Quando seleciono o tamanho "<tamanho>"
            E seleciono a cor "<cor>"
            E escolho a quantidade "<quantidade>"
            Então o sistema deve permitir adicionar o produto no carrinho

            Exemplos:
            | tamanho | cor      | quantidade |
            | P       | Branco   | 1          |
            | M       | Preto    | 2          |
            | G       | Azul     | 5          |
            | GG      | Vermelho | 10         |