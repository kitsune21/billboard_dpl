class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :plays
      t.belongs_to :board, foreign_key: true

      t.timestamps
    end
  end
end
