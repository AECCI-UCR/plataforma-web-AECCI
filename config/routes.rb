Rails.application.routes.draw do
  root 'static_pages#home'

  # Páginas estáticas
  get 'not_authorized' => 'static_pages#not_authorized', as: :not_authorized
  get 'project_info' => 'static_pages#project_info', as: :project_info

  # Rutas para la administración de usuarios
  devise_for :users
  get 'users_administration' => 'users_administration#index', as: :users
  delete 'user/:id' => 'users_administration#destroy', as: :admin_destroy_user
  put 'user/:id' => 'users_administration#toggle_admin', as: :toggle_admin

  resources :ads
  resources :tests
  resources :teachers, only: [:new, :create]
  resources :courses, only: [:index, :new, :create] do
    get :teachers, on: :member, controller: :teachers, action: :course_teachers
  end

  # Ruta para el preview de PDFs
  mount PdfjsViewer::Rails::Engine => '/pdfjs', as: 'pdfjs'
end
