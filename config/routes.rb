Rails.application.routes.draw do
  #resources :reviews     ----  nested in resources :movies below


  root "movies#index"
  resources :movies do 
  	resources :reviews
  end
end
