Rails.application.routes.draw do
    
    # get 'toppages/index' # rails g controller toppages indexによって生成された

    # root to: 'tasks#index'
    root to: 'toppages#index'
  
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
  
    get 'signup', to: 'users#new'
    resources :tasks
    resources :users, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
