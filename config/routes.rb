Rails.application.routes.draw do
  resources :feedbacks, :only => [:create]

  resources :items, :only => [:index]

  root 'home#index'
end
