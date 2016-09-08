Rails.application.routes.draw do

  #get 'welcome/index'
  resources :articles

  resources :articles do
    resources :comments
  end

  root 'welcome#index'

  get '/home', to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
