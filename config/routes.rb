Rails.application.routes.draw do

  root to: 'homes#top'
  resources :books, only: [:create, :index]

  get 'books/new'

  get 'books/:id' => 'books#show', as:'book'
  get 'books/:id/edit' => 'books#edit', as:'edit_book'
  patch 'books/:id/edit' => 'books#update', as:'update_book'
  delete 'books/:id' => 'books#destroy', as:'destroy_book'

end
