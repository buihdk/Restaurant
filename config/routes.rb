Rails.application.routes.draw do
  resources :food_items do
    # food_items/:food_item_id/orders/new
    resources :orders
  end
  
  root 'home#index'
  get 'menu' => 'menu#index'
  get 'contact_us' => 'home#contact_us'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
