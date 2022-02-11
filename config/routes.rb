Rails.application.routes.draw do
  # custom routes
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  # resources routes
  resources :portfolios, except: [:show]
  resources :blogs
end
