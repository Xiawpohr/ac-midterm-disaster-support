Rails.application.routes.draw do
  resources :disasters do 
  	resources :commets
  end
end
