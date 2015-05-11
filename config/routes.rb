Rails.application.routes.draw do

  resources :clinicas do
  collection {post :import}
  resources :home

  root 'home#index'

  resources :drugs
  resources :parsers do
  collection {post :import}
  end

  get 'alcool/:id', to: 'drugs#show', as: :alcool
  get 'alucinogeno/:id', to: 'drugs#show', as: :alucinogeno
  get 'anfetamina/:id', to: 'drugs#show', as: :anfetamina
  get 'antidepressivo"/:id', to: 'drugs#show', as: :antidepressivo
  get 'barbiturico/:id', to: 'drugs#show', as: :barbiturico
  get 'cafeina/:id', to: 'drugs#show', as: :cafeina
  get 'cocaina/:id', to: 'drugs#show', as: :cocaina
  get 'inalantes/:id', to: 'drugs#show', as: :inalantes
  get 'maconha/:id', to: 'drugs#show', as: :maconha
  get 'narcotico/:id', to: 'drugs#show', as: :narcotico
  get 'nicotina/:id', to: 'drugs#show', as: :nicotina
  get 'tranquilizante/:id', to: 'drugs#show', as: :tranquilizante

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
