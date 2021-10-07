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

    

