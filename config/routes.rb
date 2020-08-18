Rails.application.routes.draw do

  root 'static_pages#home'

  get 'static_pages/news'

  get '/introduction', to: 'static_pages#introduction'

  get '/result', to: 'static_pages#result'
  
  get '/schedule', to: 'static_pages#schedule'

  get '/contact', to: 'static_pages#contact'

  get 'static_pages/inquiry'
  
  get 'static_pages/user'
  
  
  resource :login,  :only =>[:show,:create]
  resources :schedules
  resources :result
  resources :users do
    member{get :photo}
  end
end
