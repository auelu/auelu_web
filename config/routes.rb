Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'static_pages#home'

  get 'static_pages/news'

  get '/introduction', to: 'static_pages#introduction'

  get '/schedule', to: 'static_pages#schedule'

  get '/contact', to: 'static_pages#contact'

  get 'static_pages/inquiry'
  
  get 'static_pages/user'
  
  get '/results/archives/:yyyymm', to: 'results#archives',as: :results_archive
  
  resources :schedules,  only: [:index, :show, :create]
  resources :informations,  only: [:index, :show, :create]
  resources :results,  only: [:index, :show, :create]
  resources :users,  only: [:index, :show, :create]
  
   namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :instagrams, only: [:index]
    end
    namespace :v2 do
      resources :players, only: [:index, :show]
    end
  end

end
