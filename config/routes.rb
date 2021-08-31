Rails.application.routes.draw do

  
  namespace :api do
    namespace :v1 do
      resources :sessions, only: [:create]
      resources :registrations, only: [:create]
      delete :logout, to: 'sessions#logout'
      get :logged_in, to: 'sessions#logged_in'
      
      resources :posts do
        resources :comments
      end
    end
  end
  

end