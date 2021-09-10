#language: pt
@carrinho
Funcionalidade: Editando o carrinho

    Contexto:
        Dado que acesso o site magento
            E efetuo a pesquisa de um produto pelo "SKU"
            E adiciono no carrinho
            E acesso meu carrinho de compras

    @valid
    Cenário: Validar produto adicionado e aumentar a quantidade
        Dado que verifico a adiçao do produto
        Quando eu adicionar "+1" á quantidade
            E clicar no botão "Update Shopping Cart"
        Então verifico se a quantidade e o Subtotal foram atualizados

    Cenário: Editar produto do carrinho
        Dado que verifico a adiçao do produto
        Quando eu clicar no botão alterar
            E devo escolher a cor, tamanho
            E quantidade
            E atualizar o carrinho
        Então verifico se foi alterado com sucesso

    Cenário: Excluir produto do carrinho
        Dado que verifico a adiçao do produto
        Quando eu clicar no botão excluir
        Então o produto deve ser excluído com sucesso