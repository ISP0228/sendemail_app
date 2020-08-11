Rails.application.routes.draw do
  get 'email/email_change'
  get '/admin',to: 'admin#admin'
  devise_for :logins
  get 'login/user_login'
  get 'home/top'
  devise_for :users
  get 'users/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'
  get '/user_login',to: 'login#user_login'
  get '/admin_login',to: 'login#admin_login'
  get '/user/new',to: 'users#user_new'
  get '/user/list',to: 'users#user_list'
  get '/user/deletion',to:  'users#user_deletion'
  get '/email/change',to: 'email#email_change'
  resources :users
end