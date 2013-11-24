class Admin::MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    redirect_to admin_movies_path, notice: "The movie has been created."
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update_attributes(movie_params)
    redirect_to admin_movies_path, notice: "The movie has been updated."
  end

private

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster)
  end
end
