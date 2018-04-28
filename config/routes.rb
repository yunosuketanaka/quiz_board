Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  namespace :admin do
    resources :quiz
  end

  scope module: :user do
    resources :quiz
  end

  root 'quiz#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
