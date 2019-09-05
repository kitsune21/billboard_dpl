Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'boards#index'

  resources :boards do
    resources :songs 
  end
  resources :songs do 
    resources :artists
  end
end
