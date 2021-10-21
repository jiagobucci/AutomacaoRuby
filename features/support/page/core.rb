class Core
    include Capybara::DSL
    include RSpec::Matchers
    
    
    def buscar_preencher_campo(nome_campo, massa_de_dados)
        find(ELEMENTS[nome_campo]).set massa_de_dados 
    end

    def validar_elemento(nome_elemento, texto)
      expect(find(ELEMENTS[nome_elemento]).text).to eq texto
    end
end