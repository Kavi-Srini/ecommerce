Rails.application.routes.draw do
  get 'users' => 'admin#user_list'

  get 'edit_user' => 'admin#edit_user'

  post 'edit_quantity' => 'cart#edit_quantity'

  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  get 'delete_item' => 'cart#delete_item'

  get 'delete_user' => 'admin#delete_user'
  
  devise_for :users
  root 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
