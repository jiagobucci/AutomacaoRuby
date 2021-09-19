Quando('efetuo a pesquisa de um produto pelo {string}') do |sku|
    @produto.pesquisa_produto
end
  
Então('visualizo o produto pesquisado no catalogo') do
    @produto.visualiar_produto_pesquisado
end
  
Quando('abro detalhe do produto') do
    @produto.detalhe_produto_pesquisado
end
  
Quando('seleciono a cor, tamanho') do
    @produto.selecionar_cor_e_tamanho("azul")

end
  
Quando('preencho a quantidade {string}') do |quantidade|
   @produto.preencher_quantidade(quantidade)
end
  
Então('deve ser adicionado com sucesso') do
    @produto.adicionar_com_sucesso
end
  
Então('acesso o carrinho') do
    click_link "shopping cart"
end
  
Então('valido se a quantidade adicionada esta correta') do
    @produto.validar_qtd_selecionada
end