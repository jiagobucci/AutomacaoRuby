class Carrinho
    include Capybara::DSL
    
    def preencher_quantidade(quantidade)
        if quantidade != "1" 
        @qty=rand(99)
        find("input[title='Qty']").set @qty 

        end
        return @qty
    end
end