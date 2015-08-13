Rails.application.routes.draw do
  
  resources :tag
  
  root "cities#index"



  resources :users, only: [:create, :update]
  get "/signup", to: "users#new", as: :signup
  get "/profile", to: "users#show", as: :profile
  get "/edit-profile", to: "users#edit", as: :edit_profile

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
#         users GET    /users(.:format)                     users#index
#               POST   /users(.:format)                     users#create
#     edit_user GET    /users/:id/edit(.:format)            users#edit
#          user PATCH  /users/:id(.:format)                 users#update
#               PUT    /users/:id(.:format)                 users#update
#               DELETE /users/:id(.:format)                 users#destroy
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
#             GET    /:id(.:format)                       cities#show



