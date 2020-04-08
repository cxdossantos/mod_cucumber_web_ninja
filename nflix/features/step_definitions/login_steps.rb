Quando("eu faço login com {string} e {string}") do |email, senha|
  visit "/"
  find("#emailId").set email
  find("#passId").set senha
  click_button "Entrar"

  sleep 3
end

Então("devo ser autenticado") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("devo ver {string} na área logada") do |email|
  pending # Write code here that turns the phrase above into concrete actions
end
