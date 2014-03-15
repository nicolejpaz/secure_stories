SecureStories::Application.routes.draw do
  root 'stories#new'
  post '/' => 'stories#create'

  resources :stories
end