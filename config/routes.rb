Rails.application.routes.draw do
  namespace :api do
    get 'items/skip-routes'
  end
  namespace :api do
    get 'menus/skip-routes'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
