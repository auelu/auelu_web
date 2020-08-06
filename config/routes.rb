Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/news'

  get 'static_pages/introduction'

  get 'static_pages/record'

  get 'static_pages/inquiry'

end
