DiscoverConcerts::Application.routes.draw do

  resources :genres


  resources :participates
  resources :favorites
  resources :concerts
  resources :bands
  resources :users

  match 'bands/:fb_id/show_by_fb_id', to: 'bands#show_by_fb_id', :via => :get, action: 'show_by_fb_id'
  match 'bands/:genre_id/show_by_genre_id', to: 'bands#show_by_genre_id', :via => :get, action: 'show_by_genre_id'
  match 'bands/:id/genre/:genre', to: 'bands#show_same_genre', :via => :get, action: 'show_same_genre'
  match 'bands/:user_id/show_favorites', to: 'bands#show_favorites', :via => :get, action: 'show_favorites'
  
  match 'favorites/:user_id/show_favorites', to: 'favorites#show_favorites', :via => :get, action: 'show_favorites'
  match 'favorites/:band_id/show_favorites_of_band_id', to: 'favorites#show_favorites_of_band_id', :via => :get, action: 'show_favorites_of_band_id'

  match 'concerts/:band_id/show_by_band_id', to: 'concerts#show_by_band_id', :via => :get, action: 'show_by_band_id'
  match 'concerts/:user_id/show_participates', to: 'concerts#show_participates', :via => :get, action: 'show_participates' 
  match 'concerts/:user_id/show_participates_past', to: 'concerts#show_participates_past', :via => :get, action: 'show_participates_past' 
  match 'concerts/:user_id/show_participates_future', to: 'concerts#show_participates_future', :via => :get, action: 'show_participates_future'
    
  match 'participates/:concert_id/show_by_concert_id', to: 'participates#show_by_concert_id', :via => :get, action: 'show_by_concert_id'


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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
