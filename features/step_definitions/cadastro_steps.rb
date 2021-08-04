Dado('que acesso o site magento') do
    visit("https://demo-m2.bird.eu/")
  end
  
  Dado('desejo criar uma nova conta') do
    click_link_or_button  'Create an Account'  
  end
  
  Quando('informar os dados pessoais') do
    find("#firstname").set Faker::Name.name
    find("#lastname").set "batista"
    find("#is_subscribed").click
    
  end
  
  Quando('dados de acesso') do
    numero=rand(99999)
    find("#email_address").set Faker::Internet.email
    find("#password").set "Teste@456"
    find("#password-confirmation").set "Teste@456"
    
  end
  
  Então('finalizo o cadastro') do
    click_button "Create an Account"
  end
  
  Então('visualizo o usuário na area logada') do
    result= find(".message-success").text
    expect(result).to eq "Thank you for registering with Main Website Store."
 end