# TESTE TAXWEB

Segue as informações para instalação e configuração do teste.

## Ruby version
#### Ruby versão 2.1.0

## System dependencies
#### Rails versão 4.0.0

## Configuration
É necessário a instalação do RBENV ou RVM, no meu caso eu utilizo o RVM, para instalar basta abrir o terminal `Ctrl + Alt + T` e seguir os passos abaixo: 

`gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3`

`\curl -sSL https://get.rvm.io | bash -s stable`

Reinicie o terminal e coloque o comando:

`rvm install 2.1.0`

Caso ele informe que não reconhece o comando rvm, faça o procedimento abaixo:
* Menu Editar
* Preferências do Perfil
* Clique na aba Comando
* Selecione o box "Executar comando como shell de sessão"
* Reinicie seu terminal
* rode `rvm install 2.1.0`

Todas as informações referentes a instalação do RVM pode ser vista [clicando aqui](http://www.rvm.io/)

####Instalação do Rails 4
`gem install -v4.0.0 --no-ri --no-rdoc`

####Clonar a aplicação
`git clone git@github.com:acnjr2010/desafio-programacao-1b.git`

Entre na pasta do projeto

## Database creation and Database initialization
Rode o comando abaixo dentro da pasta do projeto para criar e configurar o banco

`rake db:create db:migrate`

## How to run the test suite
Para rodar os teste automáticos basta rodar o comando na pasta do projeto

`rspec spec --format documentation`

## How to run the application
Para rodar a aplicação basta utilizar o comando abaixo:
`rails server` ou `rails s`

## Images 
![](https://github.com/acnjr2010/desafio-programacao-1b/blob/master/desafio-programacao-1b/app/assets/images/Tela%20Home.png)
![](https://github.com/acnjr2010/desafio-programacao-1b/blob/master/desafio-programacao-1b/app/assets/images/dados%20do%20arquivo.png)
