Rails.application.routes.draw do
  resources :movie_selections
  resources :movies
  resources :profiles
  get '/hello', to: 'application#hello_world'

  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
