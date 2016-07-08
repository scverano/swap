Rails.application.routes.draw do
  root 'home#index'

  get 'auth/:provider/callback', to: 'sessions#create'
  
  delete 'log_out', to: 'sessions#destroy', as: 'log_out'
end
