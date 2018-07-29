Rails.application.routes.draw do
  root 'pages#home'
  get 'about' => 'pages#about'
  resources :articles
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  
  get 'users/:id/articles', to: 'users#article', as: :tab
  resources :profiles
  
end
