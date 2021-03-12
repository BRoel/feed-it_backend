Rails.application.routes.draw do
  
  resources :users
  namespace :api do
    namespace :v1 do
      resources :posts do
        resources :comments
      end
    end
  end

end