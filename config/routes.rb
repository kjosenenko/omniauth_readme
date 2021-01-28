Rails.application.routes.draw do
  root 'welcome#home'

  get 'welcome/home' => 'welcome#home'
  match '/auth/facebook/callback' => 'sessions#create', via: [:get,:post]
end
