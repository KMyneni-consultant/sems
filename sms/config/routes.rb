SampleApp::Application.routes.draw do
  resources :ftfscs

  resources :ftfcs

  resources :atfscs

  resources :atfcs

  resources :people

  resources :tx_sections

  resources :tx_classes

  resources :menu_links

  resources :menus

  #get "admin/links"
  resources :role_facilities

  resources :role_practices

  resources :roles

  resources :facilities

  resources :practices

  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,      only: [:new, :create, :destroy]
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  root to: 'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

  match '/admin', to: 'admin#links', via: 'get'
  match '/facilities', to: 'facilities#index', via: 'get'
  match '/practices', to: 'practices#index', via: 'get'
  match '/roles', to: 'roles#index', via: 'get'
  match '/proles', to: 'role_practices#index', via: 'get'
  match '/froles', to: 'role_facilities#index', via: 'get'
  match '/two_field_category', to: 'atfcs#index', via: 'get'
  match '/two_field_subcategory', to: 'atfscs#index', via: 'get'


end
