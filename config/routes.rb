Rails.application.routes.draw do
  namespace :api do
    resources :items
      resources :menus
    end
  end
end
