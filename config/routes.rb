Rails.application.routes.draw do
  root to: 'trips#index'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :endusers, controllers: {
    registrations: 'endusers/registrations',
    sessions: "endusers/sessions",
    passwords: "endusers/passwords"
  }

  resources :endusers, only: [:edit, :show, :update, :destroy]

  resources :trips do
      resource :likes, only: [:create, :destroy]
  end

end
