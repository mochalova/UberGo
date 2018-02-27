Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :styleguide, only: :show
  resource :dashboards, only: :show
  resource :conditions, only: :show
  resource :abouts, only: :show
  root 'dashboards#show'
end
