class Produto
    include Capybara::DSL
    include RSpec::Matchers
    
    def pesquisa_produto
        sku="MJ08"
        find(ELEMENTS["produto_campo_pesquisa"]).set sku
        click_button "Search"
    end

    def visualiar_produto_pesquisado
        result=find(ELEMENTS["produto_link_item_pesquisa"]).text
        expect(result).to eq "Lando Gym Jacket"
    end
   
    def detalhe_produto_pesquisado
        find(ELEMENTS["produto_link_item_pesquisa"]).click
    end
    
    def selecionar_cor_e_tamanho
        find(ELEMENTS["produto_select_cor"]).click
        find(ELEMENTS["produto_select_tamanho"]).click
    end

    def preencher_quantidade(quantidade)
        if quantidade != "1" 
            @qty=rand(99)
            find("#qty").set @qty         
        end
        click_button "Add to Cart"
    end
    
    def adicionar_com_sucesso
        result= find(".message-success").text
        expect(result).to eq "You added Lando Gym Jacket to your shopping cart."
    end

    def validar_qtd_selecionada
        qty_carrinho=find("input[title='Qty']").value
        expect(qty_carrinho).to eq @qty.to_s
    end
end
