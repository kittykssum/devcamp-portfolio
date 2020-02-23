Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  #get 'pages/home'
  #get 'pages/about'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'about-me', to: 'pages#about'
  #get 'pages/contact'
  get 'contact', to: 'pages#contact'
  resources :blogs
  
  root to: 'pages#home'
end
