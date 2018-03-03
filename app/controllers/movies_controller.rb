class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def show_genre
    @genre = Movie.where(genre: params[:genre])
  end

  def show
  end

  def index
    @movies = Movie.all
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to movie_path(@movie)
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to '/'
  end

  def new
    @movie = Movie.new
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :duration, :genre, :description, :trailer)
  end
end
