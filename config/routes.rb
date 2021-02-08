Rails.application.routes.draw do

  get 'comments/create'
  get 'comments/destroy'
  get 'relationships/create'
  get 'relationships/destroy'
#======================
#2021/1/14 犬塚
#25行目:resources :tweet処理追加のため変更

  #get 'favorites/create'
  #get 'favorites/destroy'
#======================

    root 'tweets#index'
 
#======================
  #get 'tweets/new'
  #get 'tweets/index'
  #get 'tweets/show'
  #get 'tweets/create'
  #get 'users/index'
  #get 'users/show'
#======================
  
  devise_for :users

  resources :tweets do
    resource :favorites, only: [:create, :destroy]
    resource :comments, only: [:create, :destroy]
  end
  
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member # 追加
    get :followers, on: :member # 追加
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
