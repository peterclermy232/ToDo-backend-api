class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :movie_id
      t.integer :viewer_id
      t.string :name
      t.string :review
      t.timestamps
    end
  end
end
