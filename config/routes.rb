Rails.application.routes.draw do
  resources :people
  resources :events do
    resources :comments
  end
  resources :articles do
    resources :comments
  end
  root 'homes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
