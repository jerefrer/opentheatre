module MoviesHelper

  def poster_path(movie)
    configuration = Tmdb::Configuration.new
    configuration.base_url + "w92" + movie.poster_path
  end

end