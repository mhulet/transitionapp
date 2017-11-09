Rails.application.routes.draw do
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
end
