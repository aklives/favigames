class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :image
      t.string :description
      t.float :price
      t.integer :popularity

      t.timestamps
    end
  end
end
