Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  post 'twilio/voice' => 'twilio#voice'
  post 'twilio/message' => 'twilio#message'
  post 'notifications/notify' => 'notifications#notify'
  post 'twilio/status' => 'twilio#status'

end
