Rails.application.routes.draw do
  get 'sessions/new'
  get "/pages/:page" => "pages#show"
  root "pages#home"
#  get    '/help',    to: 'pages#help'
  get "/home", to: "pages#home"
  get    '/secret',   to: 'pages#secret'
#  get    '/contact', to: 'pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
resources :users
end
