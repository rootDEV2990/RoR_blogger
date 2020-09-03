Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get '/articles', controller: 'articles', action: 'index'
  resources :articles
  root to: "articles#index"
  get '/articles', to: 'articles#index'
  get '/articles/:id(.:format)', to: 'articles#show'
  get 'articles/new', to: 'articles#new'
  post '/articles/new', to: 'articles#create'
  get '/articles/:id/edit', to: 'articles#edit'
  put '/articles/:id', to: 'articles#update'
  delete '/articles/:id', to: 'articles#destory'
end
