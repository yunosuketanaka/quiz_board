Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  namespace :admins do
    resources :quizzes
  end

  # scope module: :user do
  namespace :users do
    resources :quizzes do
      resources :questions, :only => [:index, :show]
    end
    resources :quiz_result, :only => :show
    resources :users_quizzes, :only => :create
    resources :q_options do 
      resources :trials_q_options, :only => :create
    end
  end



  root 'user/quizzes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
