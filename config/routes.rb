Rails.application.routes.draw do
  resources :sessions
  resources :user_errors

  delete '/user_errors', to: 'user_errors#destroy_all'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
