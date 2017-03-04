Rails.application.routes.draw do
  get 'home/home'

  get 'index/index'

  resources :firehouses

  get '/', to: 'index#index'

  get '/index', to: 'index#index'

  get '/home', to: 'home#home'
  
end
