# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'articles#index'
  get '/xml', to: 'articles#xml'
  get '/json', to: 'articles#json'
  get '/misc', to: 'misc#misc'
  get '/articles_category/:category_id', to: 'articles#articles_by_category'
  # resource :books
  resources :articles do
    resources :comments
  end

  resources :categories do
    resources :comments
  end
end
