Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'general/homepage', to: "general#index"

  resources :entries
  

  root 'general#index'
end
