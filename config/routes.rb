Rails.application.routes.draw do
  root 'home#index'

  devise_for :users,
             :path => '',
             :path_names => {:sign_up => 'login', :sign_out => 'logout', :edit => 'profile'},
             :controllers => {:omniauth_callbacks => 'omniauth_callbacks',
                              :registrations => 'registrations'
                              }

  resources :users, only: [:show]

end
