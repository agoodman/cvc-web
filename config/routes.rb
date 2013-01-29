Cvc::Application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  resources :votes, only: [ :new, :create, :index ] do
    member { get :claim }
  end
  
  root to: 'votes#new'
  
end
