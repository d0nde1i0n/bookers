Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root :to =>'homes#top' # アプリケーショントップ画面をルートパスへ
  get 'books'=>'books#index'
  post 'books'=>'books#create'
  # books/1や.../books/3に該当する
  get 'books/:id'=>'books#show', as: 'book'
  get 'books/:id/edit'=>'books#edit',as: 'edit-book'
  patch 'books/:id' => 'books#update',as: 'update-book'
  delete 'books/:id' => 'books#destroy',as: 'destroy-book'


end
