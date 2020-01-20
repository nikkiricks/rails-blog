
Rails.application.routes.draw do
  resources :users
  get 'welcome/index'
 
  root 'welcome#index'

  resources :articles do
    resources :comments
  end
end