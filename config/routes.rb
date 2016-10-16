Rails.application.routes.draw do
  get 'menu/index'

  resources :food_items
  root 'home#index'
  get 'menu' => 'menu#index'
  get 'contact_us' => 'home#contact_us'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
