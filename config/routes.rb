Rails.application.routes.draw do
  

   resources :sweets, only: [:index, :new, :create, :edit, :show, :update, :destroy] do
   
   resources :reviews, only: [:create, :destroy]
  
  end
  
  
  root 'sweets#index2'
  
  
end