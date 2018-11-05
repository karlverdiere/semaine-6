Rails.application.routes.draw do
  root to: 'static_pages#home'

  get 'static_pages/home', to: 'static_pages#home'
   get 'sessions/login', to: 'sessions#new'
   post 'sessions/login', to: 'sessions#create'
   get 'users/deco', to: 'users#deco'
   get 'users/deconnection', to: 'users#deconnection'
    get 'users/new', to: 'users#new'
   post 'users/create', to: 'users#create'
   get 'users/profil', to: 'users#profil'
    get 'users/club', to: 'users#index'
end
