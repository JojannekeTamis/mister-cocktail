Rails.application.routes.draw do
 root 'cocktails#index'

resources :cocktails do
  resources :doses, only: [:new, :create, :destroy]
end

# delete 'doses/:id' => 'doses#destroy', as: 'delete_dose'
end
