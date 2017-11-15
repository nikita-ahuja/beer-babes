Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#new"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
 
  get '/profile' => 'users#show'

  resources :beers

  resources :reviews, only: [:update, :destroy]

  resources :users do
    resources :beers
  end

end
