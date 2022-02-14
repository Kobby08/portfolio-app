Rails.application.routes.draw do
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_up: 'register',
               sign_out: 'logout',
             }

  # custom routes
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'angular-items', to: 'portfolios#angular'

  # resources routes
  resources :portfolios, except: [:show]
  resources :blogs do
    member { get :toggle_status }
  end
end
