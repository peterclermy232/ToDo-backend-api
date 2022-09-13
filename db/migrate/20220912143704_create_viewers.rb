class CreateViewers < ActiveRecord::Migration[6.1]
  def change
    create_table :viewers do |t|
      t.string :password
      t.string :name
      t.integer :age
    end
  end
end
