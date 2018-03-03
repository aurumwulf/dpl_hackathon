class CommentsController < ApplicationController
  before_action :set_movie
  before_action :comment_params, only: (:show, :edit, :update, :destroy)

  def index
    #TODO user_profile
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = @movie.comments.new(comment_params)
    
    if @comment.save
    #TODO redirect_to movie_path(@movie)
    else
      render :new
    end

  end

  def edit
  end

  def update
    if @comment.update(comment_params)
    #TODO redirect_to movie_path(@movie)
    else 
      render :edit
    end
  end

  def destroy
    @comment.destroy
    #TODO redirect_to movie_path(@movie)
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def set_movie
      @movie = Movies.find(params[:movie_id])
    end
end
