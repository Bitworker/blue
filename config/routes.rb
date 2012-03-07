Blue::Application.routes.draw do
  devise_for :users

  root :to => "home#index"
  get "home/index"

  resources :pages
  match '/(:url)' => 'pages#show', :url => 'show'

end
