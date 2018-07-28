Rails.application.routes.draw do
  devise_for :users
  resources :pictures
  resources :photos, only: [:new, :create, :index, :destroy]
  root 'pictures#index'
  get '/about' => 'posts#about'
  get '/messages' => 'messages#new'
  post '/messages' => 'messages#create'
  get '/mobile' => 'mobiles#mobile'
  # get '/mobile' => 'messages#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
