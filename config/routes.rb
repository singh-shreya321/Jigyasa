Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :courses do
    resources :doubts do
      resources :answers
    end
  end
  root 'courses#index'
end
