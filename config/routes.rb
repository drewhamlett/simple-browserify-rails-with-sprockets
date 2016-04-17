Rails.application.routes.draw do
  root 'home#index'

  post '/' => 'home#post'
end
