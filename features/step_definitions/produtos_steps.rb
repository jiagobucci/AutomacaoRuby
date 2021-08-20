Quando('efetuo a pesquisa de um produto pelo {string}') do |sku|
    sku="MJ08"
    find(ELEMENTS["produto_campo_pesquisa"]).set sku
    click_button "Search"
end
  
Então('visualizo o produto pesquisado no catalogo') do
    result=find(ELEMENTS["produto_link_item_pesquisa"]).text
    expect(result).to eq "Lando Gym Jacket"
end
  
Quando('abro detalhe do produto') do
    find(ELEMENTS["produto_link_item_pesquisa"]).click
end
  
Quando('seleciono a cor, tamanho') do
find(ELEMENTS["produto_select_cor"]).click
find(ELEMENTS["produto_select_tamanho"]).click
end
  
Quando('preencho a quantidade {string}') do |quantidade|
    if quantidade != "1" 
    @qty=rand(99)
    find("#qty").set @qty
    end
    click_button "Add to Cart"
end
  
Então('deve ser adicionado com sucesso') do
    result= find(".message-success").text
    expect(result).to eq "You added Lando Gym Jacket to your shopping cart."
end
  
Então('acesso o carrinho') do
    click_link "shopping cart"
end
  
Então('valido se a quantidade adicionada esta correta') do
    qty_carrinho=find("input[title='Qty']").value
    expect(qty_carrinho).to eq @qty.to_s
end