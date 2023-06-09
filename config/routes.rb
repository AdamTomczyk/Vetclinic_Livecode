Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pets#index"

  resources :pets  do
    resources :appointments, only: [:new, :create, :index, :show]
  end
  resources :appointments, only: :destroy
end
