Rails.application.routes.draw do
  root 'posts#index'
  resources :posts,only:[:index,:new,:show,:edit,:update]
end
