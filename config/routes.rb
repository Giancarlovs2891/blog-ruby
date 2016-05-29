Blog::Application.routes.draw do
  
  resources :categories

  devise_for :users

  resources :articles do
    resources :comments, only: [:create, :destroy, :update, :show]
  end
  
  root 'welcome#index'
  get "/dashboard", to: "welcome#dashboard"
  put "/articles/:id/publish",  to: "articles#publish"
  
end
