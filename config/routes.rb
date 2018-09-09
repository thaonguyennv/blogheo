Rails.application.routes.draw do
  root to: "home#index"
  resources :posts do
    resources :comments
  end
  get '/post' => 'pages#post'
  get '/contact' => 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
