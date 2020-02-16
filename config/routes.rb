Rails.application.routes.draw do
  get '/', to: 'top#index'
  get 'sign_in', to: 'user/sessions#new'
  delete 'sign_out', to: 'user/sessions#destroy'
  get 'sign_up', to: 'user/registrations#new'

  namespace :user do
    resources :registrations, only: :create
    resources :sessions, only: :create
    resource :mypages, only: %i[show edit update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
