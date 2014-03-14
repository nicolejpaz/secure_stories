SecureStories::Application.routes.draw do
  root 'writings#new'
  resources :writings
end