Rails.application.routes.draw do
  devise_for :users
  resources :blog_posts do
    resource :cover_image, only: [:destroy], module: :blog_posts
  end
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "blog_posts#index"
end
