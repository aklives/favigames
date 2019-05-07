class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.belongs_to :users, foreign_key: true
      t.belongs_to :games, foreign_key: true

      t.timestamps
    end
  end
end
