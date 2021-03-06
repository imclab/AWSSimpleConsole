AWSSimpleConsole::Application.routes.draw do
  resources :aws_accounts

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root :to => 'ec2_view#index'

  get 'ec2_view/' => 'ec2_view#index'

  get 'api/ec2/' => 'api/ec2#index'
  get 'api/ec2/:ec2_id' => 'api/ec2#show'
  post 'api/ec2/:ec2_id/start'  => 'api/ec2#start'
  post 'api/ec2/:ec2_id/stop'   => 'api/ec2#stop'
  post 'api/ec2/:ec2_id/lock'   => 'api/ec2#lock'
  post 'api/ec2/:ec2_id/unlock' => 'api/ec2#unlock'
  post 'api/ec2/:ec2_id/schedule' => 'api/ec2#schedule'

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
