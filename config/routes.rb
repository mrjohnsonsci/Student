Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/contact'

  get 'static_pages/help'

  resources :logs
  resources :pupils
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
