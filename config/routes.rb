Rails.application.routes.draw do
  get 'votes/create'

  get 'votes/destroy'

  get 'votes/show'

  resources :comments
  
  devise_for :users
  resources :links do 
    member do
      put "like",    to: "links#vote"
      # put "dislike", to: "links#downvote"
    end
    resources :comments
  end

  root to: "links#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
