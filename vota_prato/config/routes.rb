Rails.application.routes.draw do
  match 'ola' => 'ola_mundo#index', via: 'get'
  match 'restaurantes' => 'restaurantes#index', via: 'get'
  #resources: restaurantes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

VotaPrato::Application.routes.draw do
  match 'ola' => 'ola_mundo#index', via: 'get'
end
