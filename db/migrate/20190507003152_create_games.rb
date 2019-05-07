class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :genre
      t.integer :release_year
      t.string :publisher
      t.string :platform
      t.string :image
      t.float :price
      t.integer :popularity

      t.timestamps
    end
  end
end
