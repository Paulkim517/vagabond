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

  resources :cities, only: [:index, :show] do
    resources :posts, shallow: true
  end

  resources :posts, shallow: true do
    resources :comments, shallow: true
  end

  get "/:id", to: "cities#show"

end

#           Prefix Verb   URI Pattern                            Controller#Action
#             root GET    /                                      cities#index
#            users POST   /users(.:format)                       users#create
#             user PATCH  /users/:id(.:format)                   users#update
#                  PUT    /users/:id(.:format)                   users#update
#           signup GET    /signup(.:format)                      users#new
#          profile GET    /profile(.:format)                     users#show
#     edit_profile GET    /edit-profile(.:format)                users#edit
#         sessions POST   /sessions(.:format)                    sessions#create
#            login GET    /login(.:format)                       sessions#new
#           logout GET    /logout(.:format)                      sessions#destroy
#       city_posts GET    /cities/:city_id/posts(.:format)       posts#index
#                  POST   /cities/:city_id/posts(.:format)       posts#create
#    new_city_post GET    /cities/:city_id/posts/new(.:format)   posts#new
#        edit_post GET    /posts/:id/edit(.:format)              posts#edit
#             post GET    /posts/:id(.:format)                   posts#show
#                  PATCH  /posts/:id(.:format)                   posts#update
#                  PUT    /posts/:id(.:format)                   posts#update
#                  DELETE /posts/:id(.:format)                   posts#destroy
#           cities GET    /cities(.:format)                      cities#index
#             city GET    /cities/:id(.:format)                  cities#show
#    post_comments GET    /posts/:post_id/comments(.:format)     comments#index
#                  POST   /posts/:post_id/comments(.:format)     comments#create
# new_post_comment GET    /posts/:post_id/comments/new(.:format) comments#new
#     edit_comment GET    /comments/:id/edit(.:format)           comments#edit
#          comment GET    /comments/:id(.:format)                comments#show
#                  PATCH  /comments/:id(.:format)                comments#update
#                  PUT    /comments/:id(.:format)                comments#update
#                  DELETE /comments/:id(.:format)                comments#destroy
#            posts GET    /posts(.:format)                       posts#index
#                  POST   /posts(.:format)                       posts#create
#         new_post GET    /posts/new(.:format)                   posts#new
#                  GET    /posts/:id/edit(.:format)              posts#edit
#                  GET    /posts/:id(.:format)                   posts#show
#                  PATCH  /posts/:id(.:format)                   posts#update
#                  PUT    /posts/:id(.:format)                   posts#update
#                  DELETE /posts/:id(.:format)                   posts#destroy
#                  GET    /:id(.:format)                         cities#show