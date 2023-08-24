Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[new create]
  #   collection do
  #     # Custom index
  #     # /restaurants/whatever_you_decide
  #     # verb :path
  #     get :top #=> get '/restaurants/top', to: 'restaurants#top'
  #   end

  #   member do
  #     # Custom show
  #     # /restaurants/13/whatever_you_decide
  #     # verb :path
  #     get :chef #=> get '/restaurants/13/chef', to: 'restaurants#chef'
  #   end
  end

  # resources :reviews, only: :destroy
end
