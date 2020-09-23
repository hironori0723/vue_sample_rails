Rails.application.routes.draw do
  root to: 'homes#index'
  get 'employees/index'
  get 'employees/show'
  ActiveAdmin.routes(self)
  
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :employees, only: %i(index show create update destroy)
    end
  end
end
