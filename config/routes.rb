Bueller::Application.routes.draw do
  resources :students
  resources :sessions
  resources :attendances
  root to: "welcome#index"
  match '/signup',  to: 'sessions#index',       via: 'post'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/attendances', to: 'attendances#new',  via: 'post'
  match '/attendances/show', to: 'attendances#index', via: 'get' 
  match 'list', to: 'students#list', via: 'get'
  match "/" , to: 'welcome#index', via: 'post' 
end
