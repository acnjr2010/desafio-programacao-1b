DesafioProgramacao1b::Application.routes.draw do
  root 'informations#index'

  resources 'informations'
end
