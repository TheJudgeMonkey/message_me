Rails.application.routes.draw do
  root 'home_page#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'
  mount ActionCable.server, at: '/cable'
end
