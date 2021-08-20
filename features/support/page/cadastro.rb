class Cadastro
    include Capybara::DSL
    
    def acessar_aplicacao
        visit(ELEMENTS["url"])
    end
    
    def preencher_dados_do_usuario
        find(ELEMENTS["cadastro_campo_nome"]).set Faker::Name.name
        find(ELEMENTS["cadastro_campo_sobrenome"]).set "batista"
        find(ELEMENTS["cadastro_checkbox_newsletter"]).click
    end
    
    def preencher_dados_de_acesso
        find(ELEMENTS["cadastro_campo_email"]).set Faker::Internet.email
        find(ELEMENTS["cadastro_campo_senha"]).set "Teste@456"
        find(ELEMENTS["cadastro_campo_senha_confirmacao"]).set "Teste@456"
    end
    
    
    
end
