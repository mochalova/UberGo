Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :styleguide, only: :show
  resource :dashboards, only: :show
  resource :conditions, only: :show
  resource :abouts, only: :show
  resource :rates, only: :show
  resource :sales, only: :show


  resources :drivers
  root 'dashboards#show'
end
