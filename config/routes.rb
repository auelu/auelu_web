Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'static_pages#home'

  get 'static_pages/news'

  get '/introduction', to: 'static_pages#introduction'

  get '/schedule', to: 'static_pages#schedule'

  get '/contact', to: 'static_pages#contact'

  get 'static_pages/inquiry'
  
  get 'static_pages/user'
  
    get 'informations/new'
  
  resource :login,  :only =>[:show,:create]
  resources :informations
  resources :schedules,:results,:informations
  resources :users

end
