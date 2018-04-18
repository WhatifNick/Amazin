Rails.application.routes.draw do
  get 'customers/form'

  get 'stores/form', as: 'form'

  get 'stores/index', as: 'stores'

  post 'stores/search', to: 'stores#search'

  get 'stores/:store_id', to: 'stores#show', as: 'store'
  get 'pages/home'
  get 'authors/index'
  get 'books/index'
  get 'customers/form', to: 'customers#form', as: 'customer_form'

  get '/books/:book_id', to: 'books#show', as: 'book'

  root to: 'pages#home'
  get 'home', to: 'pages#home', as: 'home'
  get 'books', to: 'books#index', as: 'books'
  get 'authors', to: 'authors#index', as: 'authors'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
