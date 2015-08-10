Rails.application.routes.draw do

  root "pages#index"

  resources :users

end

#        Prefix Verb URI Pattern              Controller#Action
#     users_new GET  /users/new(.:format)     users#new
#  users_create GET  /users/create(.:format)  users#create
#  users_update GET  /users/update(.:format)  users#update
#    users_edit GET  /users/edit(.:format)    users#edit
# users_destroy GET  /users/destroy(.:format) users#destroy
#   users_index GET  /users/index(.:format)   users#index
#    users_show GET  /users/show(.:format)    users#show
#          root GET  /                        pages#index
