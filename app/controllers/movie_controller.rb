class MovieController < ApplicationController

  def index
    @movies = Movie.all
    render json: @movies # Or render a view if using HTML
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.add
    render
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      render json: @movie, status: :created # Return the newly created movie
    else
      render json: @movie.errors, status: :unprocessable_entity # Handle validation errors
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end

end
