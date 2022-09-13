class ReviewsController < ApplicationController
 


  get '/reviews' do
   review = Review.all.order(:created_at).reverse
   review.to_json(
     only: [:name, :review,:created_at, :id]
   )
  end 

  get '/reviews/:id' do
    review = Review.find(params[:id])
    review.to_json(
      only: [:name, :review,:created_at]
    )
  end


  post '/reviews' do
    review = Review.create(
      movie_id: params[:movie_id],
      viewer_id: params[:viewer_id],
      name: params[:name],
      review: params[:review]
    )
    review.to_json
  end
  
  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

  patch '/reviews/:id' do
    review = Review.find(params[:id])
    attr_to_update = params.select do |key, value|
      ["movie_id", "viewer_id", "name", "review"].include?(key)
    end
    review.update(attr_to_update)
    review.to_json
  end


end
