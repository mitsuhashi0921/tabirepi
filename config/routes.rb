Rails.application.routes.draw do
  get 'admin_rankings/index'
  get 'rankings/index'
  root to: 'trips#index'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :endusers, controllers: {
    registrations: 'endusers/registrations',
    sessions: "endusers/sessions",
    passwords: "endusers/passwords"
  }

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

  resources :endusers, only: [:edit, :show, :update, :destroy]
  resources :admins, only: [:index, :show, :destroy]

  resources :trips do
      resource :likes, only: [:create, :destroy]
  end

  resources :admin_trips, only: [:index, :show, :destroy]

  resources :rankings, only: [:index]
  resources :admin_rankings, only: [:index]

  get 'admins/home', as: 'home'

end
