Rails.application.routes.draw do
  resources :comentarios
  resources :clientes
  resources :clientes
  resources :restaurantes
  resources :qualicacaos
  match 'qualificacoes' => 'qualicacaos#index', via: 'get'
  match 'ola' => 'ola_mundo#index', via: 'get'
end
