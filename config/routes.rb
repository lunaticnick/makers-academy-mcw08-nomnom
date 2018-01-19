Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions', registrations: 'users/registrations'
  }
  resources :restaurants do
    resources :reviews
  end
  root 'restaurants#index'
end
