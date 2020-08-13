Rails.application.routes.draw do

  root 'static_pages#home'

  get 'static_pages/news'

  get '/introduction', to: 'static_pages#introduction'

  get '/result', to: 'static_pages#result'
  
  get '/schedule', to: 'static_pages#schedule'

<<<<<<< HEAD
  get 'static_pages/inquiry'
  
  get 'static_pages/user'
  
  resources :schedules
=======
  get '/contact', to: 'static_pages#contact'

>>>>>>> 742a39d0f9b93522e432777772aee22a045842b0
end
