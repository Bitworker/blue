Blue::Application.routes.draw do
  devise_for :users

  devise_scope :user do
    get "sign_in", :to => "devise/sessions#new"
  end

  root :to => "home#index"
  get "home/index"

  resources :pages
  match '/(:url)' => 'pages#show', :url => 'show'

end
