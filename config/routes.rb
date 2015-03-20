Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  post 'twilio/voice' => 'twilio#voice'
end
