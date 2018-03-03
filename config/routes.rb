Rails.application.routes.draw do
  

  devise_for :users
  resources :accounts
  resources :playlists
  get "/play/:playlist_id", to: "playlists#add_movies", as: "adding"

  root 'movies#index'
  get '/genre/:genre', to: 'movies#show_genre', as: 'genre'

  resources :movies do
    resources :comments
  end

end
