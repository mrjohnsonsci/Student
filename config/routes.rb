Rails.application.routes.draw do
  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'static_pages/contact'

  get 'static_pages/help'

  resources :users
  resources :pupils do
    resources :logs
  end
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
