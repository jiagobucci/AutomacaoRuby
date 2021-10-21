#language: pt

Funcionalidade: fazendo Checkout

    Contexto:
        Dado que acesso o site magento
            E efetuo a pesquisa de um produto pelo "SKU"
            E adiciono no carrinho
            E acesso meu carrinho de compras
    @checkout
    Cenário: Fazendo Checkout
        # Dado que já estou no carrinho
        Quando clico no botão "Proceed to Checkout"
            E preencho os dados do Envio
            E clico no botão "Next"
            E valido os meus dados de pagamentos
            E clico no botão "Place Order"
        Então verifico se a compra foi efetuada com sucesso.

    
