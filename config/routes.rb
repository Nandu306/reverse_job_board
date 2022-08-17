Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :talent_profiles do
    resources :education
  end

  resources :company_profiles do
    resources :jobs
  end
get '/dashboard', to: 'pages#dashboard'
end
