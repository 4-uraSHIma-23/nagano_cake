Rails.application.routes.draw do

  namespace :admin do
    resources :orders, only: [:show]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit]
    resources :items, only: [:index, :new, :create, :show, :edit]
    root to: 'homes#top'
  end

  scope module: :public do
    resources :addresses, only: [:index, :edit]
    resources :orders, only: [:new, :index, :show]
    resources :cart_items, only: [:index, :update, :destroy, :create]
    delete '/cart_items/empty' => 'cart_items#empty'
    resources :customers, only: [:show, :edit]
    resources :items, only: [:index, :show]
    resources :homes, only: [:about]
    root to: 'homes#top'
    get '/about' => 'homes#about'
  end

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
