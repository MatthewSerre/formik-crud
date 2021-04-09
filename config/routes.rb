Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :subscribers
    end
  end
end
