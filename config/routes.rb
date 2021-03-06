Rails.application.routes.draw do



  root 'welcome#index'
  
  resources :articles do
    resources :comments
  end

  # get "users/"            => "users#index"
  # post "users/"           => "users#create",      as: :create_user
  # get "users/new"         => "users#new",         as: :new_user
  # get "users/id/edit"     => "users#edit",        as: :edit_user
  # patch "users/:id"       => "users#update",      as: :udpate_user
  # get "users/:id"         => "users#show",        as: :user
  # delete "users/:id"      => "users#destroy"



  # get "articles"          => "articles#index" # get is the method, calling one argument which is the articles
  # post "articles/"        => "articles#create",   as: :create_article
  # get "articles/new"      => "articles#new"
  # get "articles/:id/edit" => "articles#edit",     as: :edit_article
  # patch "articles/:id"    => "articles#update",   as: :update_article
  # get "articles/:id"      => "articles#show",     as: :article
  # delete "articles/:id"   => "articles#destroy"


  # get "comments"          => "comments#index" # get is the method, calling one argument which is the comments
  # post "comments/"        => "comments#create",   as: :create_comment
  # get "comments/new"      => "comments#new"
  # get "comments/:id/edit" => "comments#edit",     as: :edit_comment
  # patch "comments/:id"    => "comments#update",   as: :update_comment
  # get "comments/:id"      => "comments#show",     as: :comment
  # delete "comments/:id"   => "comments#destroy"




  



  # The priority is based upon order of creation: first created -> highest priority
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
