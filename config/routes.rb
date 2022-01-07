Rails.application.routes.draw do
  resources :contactbooks, only: [:create, :index, :show, :update, :destroy]
end
