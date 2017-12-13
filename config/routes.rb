Blogplace::Application.routes.draw do
  mount SabisuRails::Engine => "/sabisu_rails"
  namespace :api do
    namespace :v1 do
      resources :users, :only => [:show, :create, :update, :destroy, :index] do
        resources :posts, :only => [:create]
      end
      resources :posts, :only => [:show, :index]
      resources :ratings, :only => [:show, :create, :index]
    end
  end

  root to: 'api/v1/users#index'
end
