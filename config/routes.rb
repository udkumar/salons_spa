Rails.application.routes.draw do
  
  resources :chairs
  resources :time_slots
  resources :reservations
  devise_for :users,
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }

  namespace :api do
    namespace :v1 do
      resources :sessions, only: [:create, :destroy]
    end
  end

  resources :service_items
  resources :salons
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
