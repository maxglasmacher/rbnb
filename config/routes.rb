Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get 'design', to: 'pages#design'


  resources :yachts do
    resources :bookings, except: [ :show, :index ]
    resources :reviews, only: [ :new, :create, :index, :destroy]
  end

  get 'yachts/myposts/users/:id', to: 'users#dashboard_posts', as: :dashboard_posts
  get 'yachts/mytrips/users/:id', to: 'users#dashboard_booked', as: :dashboard_booked

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
