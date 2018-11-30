Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :courses do
    resources :doubts, shallow: true
  end


  resources :users do
    resources :doubts, shallow: true
  end

  resources :doubts do
    resources :answers, shallow: true
  end

  root 'courses#index'
end
