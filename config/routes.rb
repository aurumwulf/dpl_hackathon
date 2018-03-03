Rails.application.routes.draw do
  devise_for :users

  root 'movies#index'
  get '/genre/:genre', to: 'movies#show_genre', as: 'genre'

  resources :movies do
    resources :comments
  end

end
