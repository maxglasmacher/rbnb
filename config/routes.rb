Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get 'design', to: 'pages#design'


  resources :yachts do
    resources :bookings, except: [ :show, :index ]
    resources :reviews, only: [ :new, :create, :index, :destroy]
  end

  get 'yachts/dashboard/users/:id', to: 'users#dashboard', as: :dashboard

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
