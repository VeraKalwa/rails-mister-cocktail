Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:show, :new, :create]
  end
    resources :doses, only: [:destroy]
    root to: 'cocktails#index'
    resources :ocktails, except: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
