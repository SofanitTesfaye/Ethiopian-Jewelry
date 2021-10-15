Rails.application.routes.draw do
  # post '/ratings/:necklace_id/new', to: 'ratings#create'
  # put '/ratings/:ratings_id/necklaces/:id', to: 'necklaces#add_rating_to_necklaces'
  resources :users, only: :create 
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  resources :necklaces do
  resources :ratings

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
