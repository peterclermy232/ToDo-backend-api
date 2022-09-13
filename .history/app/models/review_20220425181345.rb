class Review < ActiveRecord::Base 
  belongs_to :movie 
  belongs_to :viewer
end