Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'static_pages#home'

  # Páginas estáticas
  get 'not_authorized' => 'static_pages#not_authorized', as: :not_authorized

  # Rutas para la administración de usuarios
  devise_for :users
  get 'users_administration' => 'users_administration#index', as: :users
  delete 'user/:id' => 'users_administration#destroy', as: :admin_destroy_user
  put 'user/:id' => 'users_administration#toggle_admin', as: :toggle_admin

  resources :ads
  resources :tests
  resources :teachers, except: [:show]#, :index]
  resources :courses, except: :show do
    get :teachers, on: :member, controller: :teachers, action: :course_teachers
  end

  # Ruta para el preview de PDFs
  mount PdfjsViewer::Rails::Engine => '/pdfjs', as: 'pdfjs'


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
