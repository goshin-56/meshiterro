Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  root :to => 'homes#top'
  get 'about' => 'homes#about',as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
