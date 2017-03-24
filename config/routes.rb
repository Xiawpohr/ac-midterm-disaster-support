Rails.application.routes.draw do
  devise_for :users
  resources :disasters do 
  	resources :commets
  end

  root to: 'disasters#index'
end
