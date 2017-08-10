Rails.application.routes.draw do
  
  get 'user_songs/index'

  root 'songs#index'

  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :songs do
    resources :user_songs
  end

  resources :user_songs, only: :destroy

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
