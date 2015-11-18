Rails.application.routes.draw do
  resources :people
  resources :games
  resources :users
  resources :questions
  resources :answers
  resources :games

  root 'games#index'
end
