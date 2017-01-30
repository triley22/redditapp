Rails.application.routes.draw do
  resources :comments
  
  devise_for :users

  resources :links do 
    resources :comments
    
    member do
      post 'vote', to: 'votes#create'
      delete 'vote', to: 'votes#destroy'
    end
  end

  root to: "links#index"
end