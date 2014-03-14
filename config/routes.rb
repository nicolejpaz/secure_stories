SecureStories::Application.routes.draw do
  root 'writings#index'
  resources :writings
end