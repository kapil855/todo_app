Rails.application.routes.draw do
  root 'tasks#index'
  
  get '/tasks', to: 'tasks#index'
  get '/tasks/:id/', to: 'tasks#index', as: 'edit_task'
  put '/tasks/:id', to: 'tasks#update'
  post '/tasks', to: 'tasks#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
