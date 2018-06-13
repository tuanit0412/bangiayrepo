Rails.application.routes.draw do
  resources :users
  get "store/index"
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index", as: "home_index"
  resources :stores do
    collection { post :search, to: "store#index" }
  end
  resources :home do
    collection { post :search, to: "store#index" }
  end
end
