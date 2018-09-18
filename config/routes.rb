Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'questions#today'
  resources :answers

  get '/questions/:id' => 'users#friends', as: :friends
  
end
