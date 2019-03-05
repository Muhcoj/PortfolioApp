Rails.application.routes.draw do
  
  devise_for :users
	root to: 'pages#home'

  get 'about-me', 	to: 'pages#about'

  get 'contact', to: 'pages#contact'

  resources :blogs

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'javascript-items', to: 'portfolios#javascript'
  
end
