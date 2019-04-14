Rails.application.routes.draw do
  get 'photos', to: 'photos#index'
  get 'photos/new', to: 'photos#new'
  get 'photos/:id',to: 'photos#show'
  resource :photos, only: [:new, :create]
end
