Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews,only: [:create]
  end
  resources :review, only: [:show, :edit, :update, :destroy]
end
