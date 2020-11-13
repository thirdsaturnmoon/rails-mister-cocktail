Rails.application.routes.draw do
  root to: 'page#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:create, :index, :new]
  end
  resources :doses, only: [:destroy]
end

# get 'cocktails', to: 'cocktails#index', as: :cocktails
# get 'cocktails/:id' to: 'cocktails#show', as: :cocktail
# get 'cocktails/new' to: 'cocktails#new', as: :new_cocktail
# post 'cocktails', to 'cocktails#create'
# get 'cocktails/:id/edit', to: 'cocktails#edit', as: :edit_cocktail
# patch 'cocktails/:id', to: 'cocktails#edit'
# delete 'cocktails/:id', to: 'cocktails#destroy'
