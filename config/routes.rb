Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root :to => 'homes#index'
  resources :skills do
  end

  resources :projects do
  end

  resources :homes do
  end

  resources :posts do
    resources :comments
  end

  resources :photos do
  end
end
