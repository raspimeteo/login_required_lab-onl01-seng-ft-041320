Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/', to: 'secrets#show'
post 'create', to: 'sessions#create'
post 'destroy', to: 'sessions#destroy'
get 'new', to: 'sessions#new'
get 'welcome', to: 'sessions#welcome'
delete 'logout'  => 'sessions#destroy'
end
