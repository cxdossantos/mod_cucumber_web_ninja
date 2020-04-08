#language:pt

Funcionalidade: Login
    Para que eu possa gerenciar os filmes do catálogo NinjaFlix
    Sendo um usuário préviamente cadastrado
    Posso acessar o sistema com meu e-mail e senha

    @login_happy
    Cenario: Acesso 
        Quando eu faço login com "tony@stark.com" e "pwd123"
        Então devo ser autenticado
        E devo ver "Tony Stark" na área logada


    Cenario: Senha inválida
        Quando eu faço login com "tony@stark.com" e "errada123"
        Então não devo ser autenticado
        E devo ver a mensagem de alerta "Usuário e/ou senha inválidos."    

    Cenario: Senha inválida
        Quando eu faço login com "cxdossantos@gmail.com" e "pwd123"
        Então não devo ser autenticado
        E devo ver a mensagem de alerta "Usuário mão cadastrado."

    Cenario: E-mail não informado
        Quando eu faço login com "" e "pwd123"
        Então não devo ser autenticado
        E devo ver a mensagem de alerta "Opps. Cadê o email?"

    Cenario: Senha não informada
        Quando eu faço login com "cxdossantos@gmail.com" e ""
        Então não devo ser autenticado
        E devo ver a mensagem de alerta "Opps. Cadê a senha?"