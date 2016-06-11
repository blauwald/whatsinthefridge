Rails.application.routes.draw do

  devise_for :users
  # get "/", :controller => "refridgerateds", :action => "index"
  root "refrigerateds#index"

  # Routes for the Refrigerated resource:
  # CREATE
  get "/refrigerateds/new", :controller => "refrigerateds", :action => "new"
  post "/create_refrigerated", :controller => "refrigerateds", :action => "create"

  # READ
  get "/refrigerateds", :controller => "refrigerateds", :action => "index"
  get "/refrigerateds/:id", :controller => "refrigerateds", :action => "show"

  # UPDATE
  get "/refrigerateds/:id/edit", :controller => "refrigerateds", :action => "edit"
  post "/update_refrigerated/:id", :controller => "refrigerateds", :action => "update"

  # DELETE
  get "/delete_refrigerated/:id", :controller => "refrigerateds", :action => "destroy"
  #------------------------------

  # Routes for the Frozen resource:
  # CREATE
  get "/frozens/new", :controller => "frozens", :action => "new"
  post "/create_frozen", :controller => "frozens", :action => "create"

  # READ
  get "/frozens", :controller => "frozens", :action => "index"
  get "/frozens/:id", :controller => "frozens", :action => "show"

  # UPDATE
  get "/frozens/:id/edit", :controller => "frozens", :action => "edit"
  post "/update_frozen/:id", :controller => "frozens", :action => "update"

  # DELETE
  get "/delete_frozen/:id", :controller => "frozens", :action => "destroy"
  #------------------------------

  # Routes for the My_grocery resource:
  # CREATE
  get "/my_groceries/new", :controller => "my_groceries", :action => "new"
  post "/create_my_grocery", :controller => "my_groceries", :action => "create"

  # READ
  get "/my_groceries", :controller => "my_groceries", :action => "index"
  get "/my_groceries/:id", :controller => "my_groceries", :action => "show"

  # UPDATE
  get "/my_groceries/:id/edit", :controller => "my_groceries", :action => "edit"
  post "/update_my_grocery/:id", :controller => "my_groceries", :action => "update"

  # DELETE
  get "/delete_my_grocery/:id", :controller => "my_groceries", :action => "destroy"
  #------------------------------

  # Routes for the Comment_on_refrigerated resource:
  # CREATE
  get "/comment_on_refrigerateds/new", :controller => "comment_on_refrigerateds", :action => "new"
  post "/create_comment_on_refrigerated", :controller => "comment_on_refrigerateds", :action => "create"

  # READ
  get "/comment_on_refrigerateds", :controller => "comment_on_refrigerateds", :action => "index"
  get "/comment_on_refrigerateds/:id", :controller => "comment_on_refrigerateds", :action => "show"

  # UPDATE
  get "/comment_on_refrigerateds/:id/edit", :controller => "comment_on_refrigerateds", :action => "edit"
  post "/update_comment_on_refrigerated/:id", :controller => "comment_on_refrigerateds", :action => "update"

  # DELETE
  get "/delete_comment_on_refrigerated/:id", :controller => "comment_on_refrigerateds", :action => "destroy"
  #------------------------------

  # Routes for the Comment_on_frozen resource:
  # CREATE
  get "/comment_on_frozens/new", :controller => "comment_on_frozens", :action => "new"
  post "/create_comment_on_frozen", :controller => "comment_on_frozens", :action => "create"

  # READ
  get "/comment_on_frozens", :controller => "comment_on_frozens", :action => "index"
  get "/comment_on_frozens/:id", :controller => "comment_on_frozens", :action => "show"

  # UPDATE
  get "/comment_on_frozens/:id/edit", :controller => "comment_on_frozens", :action => "edit"
  post "/update_comment_on_frozen/:id", :controller => "comment_on_frozens", :action => "update"

  # DELETE
  get "/delete_comment_on_frozen/:id", :controller => "comment_on_frozens", :action => "destroy"
  #------------------------------

  # devise_for :users
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
