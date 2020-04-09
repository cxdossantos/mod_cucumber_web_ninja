#language:pt

Funcionalidade: Cadastro de filmes
    Para que eu possa disponibilizar novos títulos no catálogo
    Sendo um gestor de catálogo
    Posso cadastrar um novo filmes

Cenario: Filme Disponivel
    Dado que "Vingadores Ultimato" é um novo filmes
    E o status desse filme é "Disponível"
    E o ano de lançamento é "2019"
    E a data de lançamento é "24/04/2019"
    E os atores são "Robert Downey Jr, Chris Evans, Brie Larson, Scarlett Johansson"
    E a sinopse do filme é "Após Thanos eliminar metade do universo, os vingadores terão que resolver esta treta"
    E escolhi uma capa muito bonita
    Quando eu faço o cadastro deste filme na lista

Cenario: Filme pré venda
    Dado que "Homem Aranha longe de Casa" é um novo filmes
    E o status desse filme é "Pré-venda"
    E o ano de lançamento é "2019"
    E a data de lançamento é "04/07/2019"
    E os atores são "Tom Holland, Samuel L. Jackson, Marísa Tomei"
    E a sinopse do filme é "Peter Park está em uma viagem pela Europa e é convocado por Nick Fury para uma missão"
    E escolhi uma capa muito bonita
    Quando eu faço o cadastro deste filme na lista

Cenario: Filme em breve
    Dado que "Coringa" é um novo filmes
    E o status desse filme é "Em breve"
    E o ano de lançamento é "2019"
    E a data de lançamento é "20/09/2019"
    E os atores são "Joaquin Phoenix"
    E a sinopse do filme é "O comediante falido Arthur Flack encontra violentos bandidos pelas ruas de Gotham City"
    E escolhi uma capa muito bonita
    Quando eu faço o cadastro deste filme na lista

Cenario: Sem nome
    Quando eu tento cadastrar um filme sem o nome
    Então devo ver a notificação "Oops - Filme sem título. Pode isso Arnaldo?"

Cenario: Sem status
    Quando eu tento cadastrar um filme sem o status
    Então devo ver a notificação "Oops - o status deve ser informado"

Cenario: Ano de lançamento não informado
    Quando eu tento cadastrar um filme sem o status
    Então devo ver a notificação "Oops - Faltou o ano de lançamento também!"

Cenario: Data da estréia não informada
    Quando eu tento cadastrar um filme sem o status
    Então devo ver a notificação "Oops - Quase lá, falta a data de estréia!"

Cenario: Duplicado
    Dado que "Deadpool 2"  já foi cadastrado 
    Quando eu faço cadastro desse filme
    Então devo ver a notificação "Oops - Este título já existe no NinjaFlix!"
