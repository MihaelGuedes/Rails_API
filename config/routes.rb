Rails.application.routes.draw do
  resources :kinds
  resources :contacts do
    #KIND
    resource :kind, only: [:show]
    resource :kind, only: [:show], path: "relationships/kind"
    #PHONES
    resource :phones, only: [:show]
    resource :phones, only: [:show], path: "relationships/phones"
    #ADDRESS
    resource :address, only: [:show, :update, :create, :destroy]
    resource :address, only: [:show, :update, :create, :destroy], path: "relationships/address"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
