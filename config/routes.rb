Rails.application.routes.draw do

  resources :agencies
  root 'startup#index'

  

  devise_for :users

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#root 'welcome#index'

get "home/index" => "home#index"
get "/about" => "pages#about"
get "/services" => "home#services"


end
