Rails.application.routes.draw do

  root "cities#index"

  resources :users, only: [:create]
  get "/signup", to: "users#new", as: :signup
  get "/profile", to: "users#show", as: :profile

  resources :sessions, only: [:create]
  get "/login", to: "sessions#new", as: :login
  get "/logout", to: "sessions#destroy", as: :logout

  # resources :posts
  
  # resources :cities, only: [:index, :show]

  resources :cities, only: [:index, :show] do
      resources :posts, shallow: true
      # post "/cities/:city_id/posts", to: "post#create", as: :city_post
  end

  get "/:id", to: "cities#show"

end

#        Prefix Verb   URI Pattern                          Controller#Action
#          root GET    /                                    cities#index
#         users POST   /users(.:format)                     users#create
#        signup GET    /signup(.:format)                    users#new
#       profile GET    /profile(.:format)                   users#show
#      sessions POST   /sessions(.:format)                  sessions#create
#         login GET    /login(.:format)                     sessions#new
#        logout GET    /logout(.:format)                    sessions#destroy
#    city_posts GET    /cities/:city_id/posts(.:format)     posts#index
#               POST   /cities/:city_id/posts(.:format)     posts#create
# new_city_post GET    /cities/:city_id/posts/new(.:format) posts#new
#     edit_post GET    /posts/:id/edit(.:format)            posts#edit
#          post GET    /posts/:id(.:format)                 posts#show
#               PATCH  /posts/:id(.:format)                 posts#update
#               PUT    /posts/:id(.:format)                 posts#update
#               DELETE /posts/:id(.:format)                 posts#destroy
#        cities GET    /cities(.:format)                    cities#index
#          city GET    /cities/:id(.:format)                cities#show
#               GET    /:id(.:format)                       cities#show



