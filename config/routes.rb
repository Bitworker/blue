Blue::Application.routes.draw do
  devise_for :users

  root :to => "home#index"
  get "home/index"

  match '/(:url)' => 'pages#show', :url => 'show'
  resources :pages

end
