class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :release_date
      t.string :cast 
      t.string :director 
      t.string :producer
      t.string :image_URL
    end
  end
end
