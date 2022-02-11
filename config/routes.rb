Rails.application.routes.draw do
  # custom routes
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # resources routes
  resources :portfolios
  resources :blogs
end
