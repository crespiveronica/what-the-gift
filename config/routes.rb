Wtg::Application.routes.draw do
  root to: 'static_pages#home'

  match '/signup/', to: 'users#new', via: 'get'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

  match '/friends/requests/', to: 'friends#requests', via: 'get', :as => 'friend_requests'
  match '/friends/pending/', to: 'friends#pending', via: 'get'
  match '/friends/send-request/:id', to: 'friends#send_request', via: 'get', :as => 'send_request'
  match '/friends/accept/:id/', to: 'friends#accept', via: 'get', :as => 'accept_friend_request'
  match '/friends/unfriend/:id/', to: 'friends#unfriend', via: 'get'

  match '/friends/', to: 'users#friends', via: 'get'

  match '/friends/search/', to: 'users#search', via: 'get'
  match '/friends/search/', to: 'users#search_post', via: 'post'
  match '/friends/:id/', to: 'users#show_friend', via: 'get', :as => 'show_friend'
  match '/friends/:id/make-a-gift/', to: 'users#makeAGift', via: 'get'
  match '/friends/:id/gifts/', to: 'users#gifts', via: 'get'

  match '/user/change-avatar', to: 'users#change_avatar', :as => 'user_change_avatar'
  match '/seller/change-avatar', to: 'sellers#change_avatar', :as => 'seller_change_avatar'
  match '/user/mail', to: 'users#update_mail', :as => 'update_user_email'
  match '/seller/mail', to: 'sellers#update_mail', :as => 'update_seller_email'
  match '/users/forgotten-user/', to: 'users#forgotten_user', via: 'get', :as => 'forgotten_user'
  match '/users/forgotten-user/', to: 'users#forgotten_user_post', via: 'post', :as => 'forgotten_user'
  match '/confirm/:id/:token/', to: 'users#confirm', via: 'get', :as => 'confirm'
  match '/confirm-mail/:id/:token/', to: 'users#confirm_mail', via: 'get', :as => 'confirm_mail'
  match '/users/reactivate/:id', to: 'users#reactivate', via: 'get', :as => 'reactivate'
  match '/users/reactivate/:id', to: 'users#reactivatePost', via: 'post', :as => 'reactivate_post'
  match '/banned/:id', to: 'static_pages#banned', via: 'get', :as => 'banned'

  match '/sellers/:id/showroom/', to: 'sellers#showroom', via: 'get', :as => 'showroom'
  match '/users/birthday-notification', to: 'users#birthday_notification', via: 'get', :as => 'birthday_notification'
  match '/users/:id/change-password', to: 'users#update_password', :as => 'user_password_reset'
  match '/sellers/:id/change-password', to: 'sellers#update_password', :as => 'seller_password_reset'

  match '/products/recommended/', to: 'products#recommended', via: 'get'
  match '/products/favorites/', to: 'products#favorites', via: 'get'
  match '/products/search/', to: 'products#search', via: 'get', :as =>'search_product'
  match '/products/do_advanced_search/', to: 'products#do_advanced_search', via: 'get', :as =>'do_advanced_search_product'
  match '/products/do_search/', to: 'products#do_search', via: 'get', :as =>'do_search_product'
  match '/products/search-by-category/:category', to: 'products#do_search_by_category', via: 'get', :as =>'search_by_category_product'
  match '/gifts/', to: 'products#gifts', via: 'get', :as => 'my_gifts'
  match '/products/new' , to: 'products#new'
  match '/products/edit' , to: 'products#edit'
  match '/products/destroy' , to: 'products#destroy'
  match '/products/:id/', to: 'products#show', :as => 'product'
  match '/products/:id/wishlist', to: 'products#wishlist', via: 'post', :as => 'product_add_to_wishlist'
  match '/products/:id/wishlist', to: 'products#remove_from_wishlist', via: 'delete', :as => 'product_remove_from_wishlist'
  match '/products/:id/gifts', to: 'products#product_add_to_gifts', :as => 'product_add_to_gifts'
  match '/products/:id/rate', to: 'products#rate', via: 'post', :as => 'product_rate'

  match '/sellingproducts/:id/approve', to: 'sellingproducts#approve', via: 'post', :as => 'approve'
  match '/sellingproducts/:id/reject', to: 'sellingproducts#reject', via: 'post', :as => 'reject'
  match '/my-products/', to: 'selling_products#mine', via: 'get', :as => 'my_products'
  match '/my-products/:id/edit/', to: 'selling_products#edit', via: 'get', :as => 'edit_selling_products'
  match '/my-products/:id/', to: 'selling_products#destroy', via:'delete', :as => 'destroy_selling_products'
  match '/my-products/:id/', to: 'selling_products#update', via: 'put', :as => 'update_selling_products'
  match '/my-products/new/', to: 'selling_products#new', via: 'get', :as => 'new_selling_products'
  match '/my-products/create/', to: 'selling_products#create', via: 'post', :as => 'create_selling_products'
  match '/my-products/upload/', to: 'selling_products#upload', via: 'post', :as => 'product_file'
  match '/sell-one/:id/', to: 'selling_products#sellone', via: 'get', :as => 'sell_one'

  match '/about/', to: 'static_pages#about', via: 'get'
  match '/contact/', to: 'static_pages#contact', via: 'get'

  match '/admins/login', to: 'admins#login', via: 'get', :as => 'admin_login'
  match '/admins/user/edit', to: 'admins#user_edit', via: 'get', :as => 'admin_user_edit'
  match '/admins/seller/edit', to: 'admins#seller_edit', via: 'get', :as => 'admin_seller_edit'
  match '/admins/selling-product/edit', to: 'admins#selling_product_edit', via: 'get', :as => 'admin_selling_product_edit'
  match '/admins/category/edit', to: 'admins#category_edit', via: 'get', :as => 'admin_category_edit'
  match '/users/:id/enable', to: 'admins#enable_user', via: 'post', :as => 'enable_user'
  match '/users/:id/disable', to: 'admins#disable_user', via: 'post', :as => 'disable_user'
  match '/sellers/:id/enable', to: 'admins#enable_seller', via: 'post', :as => 'enable_seller'
  match '/sellers/:id/disable', to: 'admins#disable_seller', via: 'post', :as => 'disable_seller'
  match '/selling-products/:id/enable', to: 'admins#enable_selling_product', via: 'post', :as => 'enable_selling_product'
  match '/selling-products/:id/disable', to: 'admins#disable_selling_product', via: 'post', :as => 'disable_selling_product'
  
  resources :users
  resources :sellers
  resources :products
  resources :selling_products
  resources :categories
  resources :admins
  resources :profile
  resources :sessions, only: [:new, :create, :destroy, :create_admin]

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
