class Movie < ActiveRecord::Base 
  has_many :reviews
  has_many :viewers, through: :reviews
end