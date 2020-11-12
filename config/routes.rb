Rails.application.routes.draw do
  root to: 'page#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only [:create, :index, :new]
  end
  resources :doses, only [:destroy]
end
