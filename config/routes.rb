Rails.application.routes.draw do
  # get 'doses/new'
  # get 'doses/create'
  # get 'doses/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "cocktails", to: "cocktails#index"
  # get "cocktails/:id", to: "cocktails#show", as: :cocktail

  # get "cocktails/new", to: "cocktails#new", as: :new
  # post "cocktails", to: "cocktails#create"

  resources :cocktails, only: [:index, :new, :create, :show]
  resources :cocktails do
    resources :doses, only: [ :new, :create, :show, :destroy ]
  end

end






  # get "tasks", to: 'tasks#index'
  # get "tasks/:id", to: 'tasks#show', as: :task

  # get 'tasks/new', to: 'tasks#new'
  # post 'tasks', to: 'tasks#create'

  # get 'tasks/:id/edit', to: 'tasks#edit'

  # patch 'tasks/:id', to: 'tasks#update'
  # delete 'tasks/:id', to: 'tasks#destroy'
