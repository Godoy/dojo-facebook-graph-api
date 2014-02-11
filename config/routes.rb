Dojo01::Application.routes.draw do
  get "apresentar/dojo"

  get "pages/index"
  get "apresentar/dojo", :as => 'apresentar'
  
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
  
  root :to => 'pages#index'

end
