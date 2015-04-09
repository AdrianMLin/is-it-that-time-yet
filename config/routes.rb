Rails.application.routes.draw do
  resources :users

  resources :users do
    resources :events, shallow: true
  end

  root 'home#index'

  post '/login' => 'session#create'
  delete '/session' => 'session#destroy'
#         Prefix Verb   URI Pattern                          Controller#Action
#          users GET    /users(.:format)                     users#index
#                POST   /users(.:format)                     users#create
#       new_user GET    /users/new(.:format)                 users#new
#      edit_user GET    /users/:id/edit(.:format)            users#edit
#           user GET    /users/:id(.:format)                 users#show
#                PATCH  /users/:id(.:format)                 users#update
#                PUT    /users/:id(.:format)                 users#update
#                DELETE /users/:id(.:format)                 users#destroy
#    user_events GET    /users/:user_id/events(.:format)     events#index
#                POST   /users/:user_id/events(.:format)     events#create
# new_user_event GET    /users/:user_id/events/new(.:format) events#new
#     edit_event GET    /events/:id/edit(.:format)           events#edit
#          event GET    /events/:id(.:format)                events#show
#                PATCH  /events/:id(.:format)                events#update
#                PUT    /events/:id(.:format)                events#update
#                DELETE /events/:id(.:format)                events#destroy
#                GET    /users(.:format)                     users#index
#                POST   /users(.:format)                     users#create
#                GET    /users/new(.:format)                 users#new
#                GET    /users/:id/edit(.:format)            users#edit
#                GET    /users/:id(.:format)                 users#show
#                PATCH  /users/:id(.:format)                 users#update
#                PUT    /users/:id(.:format)                 users#update
#                DELETE /users/:id(.:format)                 users#destroy

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
