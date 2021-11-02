Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :posts do
        post 'rails/active_storage/direct_uploads', to: 'direct_uploads#create'
        resources :comments
      end
    end
  end

end