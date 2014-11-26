# == Route Map
#
#             Prefix Verb   URI Pattern                        Controller#Action
#               root GET    /                                  products#new
#             prints GET    /prints(.:format)                  prints#index
#                    POST   /prints(.:format)                  prints#create
#          new_print GET    /prints/new(.:format)              prints#new
#         edit_print GET    /prints/:id/edit(.:format)         prints#edit
#              print GET    /prints/:id(.:format)              prints#show
#                    PATCH  /prints/:id(.:format)              prints#update
#                    PUT    /prints/:id(.:format)              prints#update
#                    DELETE /prints/:id(.:format)              prints#destroy
#              parts GET    /parts(.:format)                   parts#index
#                    POST   /parts(.:format)                   parts#create
#           new_part GET    /parts/new(.:format)               parts#new
#          edit_part GET    /parts/:id/edit(.:format)          parts#edit
#               part GET    /parts/:id(.:format)               parts#show
#                    PATCH  /parts/:id(.:format)               parts#update
#                    PUT    /parts/:id(.:format)               parts#update
#                    DELETE /parts/:id(.:format)               parts#destroy
#             styles GET    /styles(.:format)                  styles#index
#                    POST   /styles(.:format)                  styles#create
#          new_style GET    /styles/new(.:format)              styles#new
#         edit_style GET    /styles/:id/edit(.:format)         styles#edit
#              style GET    /styles/:id(.:format)              styles#show
#                    PATCH  /styles/:id(.:format)              styles#update
#                    PUT    /styles/:id(.:format)              styles#update
#                    DELETE /styles/:id(.:format)              styles#destroy
#     customisations GET    /customisations(.:format)          customisations#index
#                    POST   /customisations(.:format)          customisations#create
#  new_customisation GET    /customisations/new(.:format)      customisations#new
# edit_customisation GET    /customisations/:id/edit(.:format) customisations#edit
#      customisation GET    /customisations/:id(.:format)      customisations#show
#                    PATCH  /customisations/:id(.:format)      customisations#update
#                    PUT    /customisations/:id(.:format)      customisations#update
#                    DELETE /customisations/:id(.:format)      customisations#destroy
#           products GET    /products(.:format)                products#index
#                    POST   /products(.:format)                products#create
#        new_product GET    /products/new(.:format)            products#new
#       edit_product GET    /products/:id/edit(.:format)       products#edit
#            product GET    /products/:id(.:format)            products#show
#                    PATCH  /products/:id(.:format)            products#update
#                    PUT    /products/:id(.:format)            products#update
#                    DELETE /products/:id(.:format)            products#destroy
#             orders GET    /orders(.:format)                  orders#index
#                    POST   /orders(.:format)                  orders#create
#          new_order GET    /orders/new(.:format)              orders#new
#         edit_order GET    /orders/:id/edit(.:format)         orders#edit
#              order GET    /orders/:id(.:format)              orders#show
#                    PATCH  /orders/:id(.:format)              orders#update
#                    PUT    /orders/:id(.:format)              orders#update
#                    DELETE /orders/:id(.:format)              orders#destroy
#          customers GET    /customers(.:format)               customers#index
#                    POST   /customers(.:format)               customers#create
#       new_customer GET    /customers/new(.:format)           customers#new
#      edit_customer GET    /customers/:id/edit(.:format)      customers#edit
#           customer GET    /customers/:id(.:format)           customers#show
#                    PATCH  /customers/:id(.:format)           customers#update
#                    PUT    /customers/:id(.:format)           customers#update
#                    DELETE /customers/:id(.:format)           customers#destroy
#              login GET    /login(.:format)                   session#new
#                    POST   /login(.:format)                   session#create
#                    DELETE /login(.:format)                   session#destroy
#

Rails.application.routes.draw do

  root :to => 'products#new'

  resources :prints

  resources :parts

  resources :styles

  resources :customisations

  resources :products

  resources :orders

  resources :customers

##### SESSION CONTROLLER #####

# Prompt user to log in and enable to log out
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy' 



end
