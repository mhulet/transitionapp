Rails.application.routes.draw do
  devise_for :users,
             path: 'users',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout'
             }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :administrators,
             path: 'administrators',
             controllers: {
               sessions: 'administrators/sessions'
             }

  namespace :admin do
    resources :administrators
    resources :hubs
    root to: 'administrators#index'
  end

  namespace :hubby do
    get 'dashboard', to: 'dashboard#index'
    resources :users
    root to: 'dashboard#index'
  end

  root to: redirect('/hubby/dashboard')
end
