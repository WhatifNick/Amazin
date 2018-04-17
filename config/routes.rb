Rails.application.routes.draw do
  get 'pages/home'
  get 'authors/index'
  get 'books/index'


  get '/books/:book_id', to: 'books#show', as: 'book'

  root to: 'pages#home'
  get 'home', to: 'pages#home', as: 'home'
  get 'books', to: 'books#index', as: 'books'
  get 'authors', to: 'authors#index', as: 'authors'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
