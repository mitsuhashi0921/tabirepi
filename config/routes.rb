Rails.application.routes.draw do
  get 'endusers/show'
  get 'enduser/show'
  devise_for :endusers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :endusers, only: [:show]

  resources :trips do
      resource :likes, only: [:create, :destroy]
  end

end
