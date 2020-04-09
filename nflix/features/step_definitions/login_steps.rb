Quando("eu faço login com {string} e {string}") do |email, senha|
  @login.go
  @login.with(email, senha)
  sleep 1
end

# Validando chaves do Local Storage
Então("devo ser autenticado") do
  js_script = 'return window.localStorage.getItem("default_auth_token");'
  token = page.execute_script(js_script)
  expect(token.length).to be 147
end

Então("devo ver {string} na área logada") do |expect_name|
  expect(@sidebar.logged_user).to eql expect_name
end

Então("não devo ser autenticado") do
  js_script = 'return window.localStorage.getItem("default_auth_token");'
  token = page.execute_script(js_script)
  expect(token).to be nil
end

Então("devo ver a mensagem de alerta {string}") do |expect_message|
  expect(@login.alert).to eql expect_message
end
