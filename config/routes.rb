Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root :to =>'homes#top' # アプリケーショントップ画面をルートパスへ
  get 'books'=>'books#index'
  post 'books'=>'books#create'
  # lists/1や.../lists/3に該当する
  get 'books/:id'=>'books#show', as: 'book'
  get 'books/:id/edit'=>'books#edit',as: 'book-edit'
  patch 'books/:id' => 'books#update',as: 'book-update'
  delete 'books/:id' => 'books#destroy',as: 'book-destroy'


end
