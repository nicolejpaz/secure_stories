SecureStories::Application.routes.draw do
  root 'writings#new'
  post '/' => 'writings#create'

  resources :writings
end