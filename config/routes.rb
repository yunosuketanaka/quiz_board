Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  namespace :admin do
    resources :quizzes
  end

  # scope module: :user do
  namespace :user do
    resources :quizzes
  end

  root 'user/quizzes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
