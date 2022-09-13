class MoviesController < ApplicationController

 
  get '/movies' do
   movie = Movie.all.order(:title)
   movie.to_json
  end

  get '/movies/:id' do
    movie = Movie.find(params[:id])
    movie.to_json
  end

  post '/movies' do 
    movie= Movie.create(
    title: params[:title],
    release_date: params[:release_date],
    cast: params[:cast],
    director: params[:director],
    producer: params[:producer],
    image_URL: params[:image_URL]
  )
  movie.to_json
  end

  delete '/movies/:id' do
    movie = Movie.find(params[:id])
    movie.destroy
    movie.to_json
  end

  patch '/movies/:id' do
    movie = Movie.find(params[:id])
    attr_to_update = params.select do |key, value|
      ["title", "release_date", "cast", "director","producer","image_URL" ].include?(key)
    end
    movie.update(attr_to_update)
    movie.to_json
  end

end
