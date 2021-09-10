#language: pt
@teste
Funcionalidade: pesquisa de produtos
    Contexto:
        Dado que acesso o site magento
            E efetuo a pesquisa de um produto pelo "SKU"

    Cenário: Pesquisa de produto disponivel no site
        Então visualizo o produto pesquisado no catalogo

    @tag
    Cenário: Adicionar uma unidade do produto no carrinho
        Quando abro detalhe do produto
            E seleciono a cor, tamanho
            E preencho a quantidade "1"
        Então deve ser adicionado com sucesso

    Cenário: Adicionar multiplas unidades do produto no carrinho e verificar se a quantidade esta correta
        Quando abro detalhe do produto
            E seleciono a cor, tamanho
            E preencho a quantidade "+1"
        Então deve ser adicionado com sucesso
            E acesso o carrinho
            E valido se a quantidade adicionada esta correta

    Cenário: Validar produto adicionado e aumentar a quantidade
        Dado que estou no carrinho e clico em "shopping cart"
            E verifico a adiçao do produto
        Quando eu adicionar "+1" á quantidade
        Então devo clicar no botão "Update Shopping Cart" para atualizar o Subtotal

    Cenário: Editar produto do carrinho
        Dado que estou no carrinho desejo alterar o produto existente
        Quando eu clicar no botão alterar
        Então devo escolher a cor, tamanho
            E quantidade
            E atualizar o carrinho

    Cenário: Excluir produto do carrinho
        Dado que estou no carrinho desejo excluir o produto existente
        Quando eu clicar no botão excluir
        Então o produto deve ser excluído com sucesso

