Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # All Lists
  # get 'lists', to: 'lists#index'
  root to: 'lists#index'

  # specific list
  get 'lists/:id', to: 'lists#show'

  # new list
  get 'lists/new', to: 'lists#new', as: 'new_list'
  post 'lists', to: 'lists#create'

  # edit
  get 'lists/:id', to: 'lists#edit', as: 'edit_list'
  post 'lists', to: 'lists#update'

  # delete
  delete 'lists/:id', to: 'lits#destroy'

end
