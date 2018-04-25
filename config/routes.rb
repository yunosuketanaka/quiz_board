Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root 'quiz#index'

  get 'quiz/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
