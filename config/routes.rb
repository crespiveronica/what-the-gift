Wtg::Application.routes.draw do
  root to: 'static_pages#home'

  match '/signup/', to: 'users#new', via: 'get'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

  match '/friends/', to: 'friends#index', via: 'get'
  match '/friends/requests/', to: 'friends#requests', via: 'get'
  match '/friends/search/', to: 'friends#search', via: 'get'
  match '/friends/pending/', to: 'friends#pending', via: 'get'
  match '/friends/:id/', to: 'friends#show', via: 'get'
  match '/friends/:id/make-a-gift/', to: 'friends#makeAGift', via: 'get'
  match '/friends/:id/gifts/', to: 'friends#gifts', via: 'get'
  match '/friends/:id/unfriend/', to: 'friends#unfriend', via: 'get'
  match '/products/recommended/', to: 'products#recommended', via: 'get'
  match '/products/favorites/', to: 'products#favorites', via: 'get'
  match '/products/search/', to: 'products#search', via: 'get'
  match '/my-products/', to: 'products#mine', via: 'get'
  match '/gifts/', to: 'products#gifts', via: 'get'
  match '/profile/', to: 'profile#index', via: 'get'
  match '/profile/edit/' , to: 'profile#edit', :as => 'edit_profile'
  match '/profile/edit_user', to: 'profile#edit_user', via: 'get'
  match '/profile/edit_seller/' , to: 'profile#edit_seller'
  match '/profile/delete/', to: 'profile#delete'
  match '/profile/change-avatar/', to: 'profile#change_avatar', :as => 'change_avatar'
  match '/about/', to: 'static_pages#about', via: 'get'
  match '/contact/', to: 'static_pages#contact', via: 'get'
  match '/users/confirm/:id/:code/', to: 'users#confirm'
  match '/admins/user_edit', to: 'admins#user_edit', via: 'get'
  match '/admins/product_edit', to: 'admins#product_edit', via: 'get'
  match '/admins/category_edit', to: 'admins#category_edit', via: 'get'
  match '/products/new' , to: 'products#new'
  match '/products/edit' , to: 'products#edit'
  match '/products/destroy' , to: 'products#destroy'
  match '/products/:id/', to: 'products#show', :as => 'product'
  match '/reactivate' , to: 'static_pages#reactivate'

  resources :users
  resources :sellers
  resources :products
  resources :categories
  resources :admins
  resources :profile
  resources :sessions, only: [:new, :create, :destroy]
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'static_pages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
