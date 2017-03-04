Rails.application.routes.draw do

  resources :catholic_charities
  resources :sacred_hearts
  
  get '/team', to: 'team#team'

  get '/about', to: 'about#about'

  get '/faq', to: 'faq#faq'

  get 'home/home'

  get 'index/index'

  resources :firehouses

  get '/', to: 'index#index'

  get '/index', to: 'index#index'

  get '/home', to: 'home#home'

end
