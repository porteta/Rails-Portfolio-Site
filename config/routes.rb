Erin::Application.routes.draw do
  resources :pages

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  devise_for :users
  # resources :projects
  root 'projects#index'
  get '/project/:permalink', to: 'projects#show', :as => 'project'
  get '/page/:permalink', to: 'pages#show', :as => 'static_page'
end
