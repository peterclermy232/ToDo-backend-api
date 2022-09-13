class ViewersController < ApplicationController

   #viewers
    get '/viewers' do
      viewer = Viewer.all.order(:age)
      viewer.to_json(
        only: [:name, :age, :password],
        include: {movies: {only: [:title]},
                reviews: {only: [:review]}
      }
      )
    end
    
    get '/viewers/:name' do
      viewer = Viewer.find_by(name: params[:name])
      viewer.to_json
    end

    get '/viewers/:name/reviews' do
      viewer = Viewer.find_by(name: params[:name])
      viewer_reviews = viewer.reviews
      viewer_reviews.to_json
    end

    post '/viewers' do
      viewer = Viewer.create(
        password:params[:password],
        name:params[:name],
        age:params[:age]
      )
      viewer.to_json
    end

    patch '/viewers/:id' do
      viewer = Viewer.find(params[:id])
      attr_to_update = params.select do |key,value|
        ["name", "age"].include?(key)
      end
      viewer.update(attr_to_update)
      viewer.to_json
    end

    delete '/viewers/:id' do
      viewer = Viewer.find(params[:id])
      viewer.destroy
      viewer.to_json
    end

end
