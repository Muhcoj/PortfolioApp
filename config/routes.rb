Rails.application.routes.draw do
  resources :topics, only: [:index, :show]

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
	

  get 'about-me', 	to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'news', to: 'pages#news'

  resources :blogs do 
  	member do
  		get :toggle_status
  	end
  end

  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'javascript-items', to: 'portfolios#javascript'

  mount ActionCable.server => '/cable'
  root to: 'pages#home'
end
