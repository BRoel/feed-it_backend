Rails.application.routes.draw do
  root to: 'static#home'
  resources :sessions, only: [:create]
  
  namespace :api do
    namespace :v1 do
      resources :posts do
        resources :comments
      end
    end
  end
  

end