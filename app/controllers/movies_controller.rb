class MoviesController < ApplicationController
  def show_genre
    @genre = Movie.where(genre: params[:genre])
  end


  def index
    @movies = Movie.all
  end
end
