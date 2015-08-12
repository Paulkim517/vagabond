Rails.application.routes.draw do

  root "cities#index"

  resources :users, only: [:create]
  get "/signup", to: "users#new", as: :signup
  get "/profile", to: "users#show", as: :profile

  resources :sessions, only: [:create]
  get "/login", to: "sessions#new", as: :login
  get "/logout", to: "sessions#destroy", as: :logout

  resources :posts
  
  resources :cities, only: [:index, :show]
  

end

#    Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         pages#index
#     users POST   /users(.:format)          users#create
#    signup GET    /signup(.:format)         users#new
#   profile GET    /profile(.:format)        users#show
#     posts GET    /posts(.:format)          posts#index
#           POST   /posts(.:format)          posts#create
#  new_post GET    /posts/new(.:format)      posts#new
# edit_post GET    /posts/:id/edit(.:format) posts#edit
#      post GET    /posts/:id(.:format)      posts#show
#           PATCH  /posts/:id(.:format)      posts#update
#           PUT    /posts/:id(.:format)      posts#update
#           DELETE /posts/:id(.:format)      posts#destroy
#  sessions POST   /sessions(.:format)       sessions#create
#     login GET    /login(.:format)          sessions#new
#    logout GET    /logout(.:format)         sessions#destroy
