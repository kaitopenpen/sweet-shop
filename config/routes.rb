Rails.application.routes.draw do
   resources :sweets, only: [:index, :new, :create, :edit, :show, :update, :destroy]
  
  end
