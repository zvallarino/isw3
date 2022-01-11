class MoviesController < ApplicationController
  set :default_content_type, 'application/json'
 
  def index
    movies = Movie.all
    render json: movies, status: :ok
  end 

  get "/movies" do
    Movie.all.to_json
  end

  get "/movies/suggested" do
    Movie.suggested.to_json
  end 

  get "/movies/genres" do
    Movie.genres.to_json
  end 


end
