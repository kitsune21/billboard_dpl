class RemoveBoardIdFromArtist < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:artists, :board_id, true)
  end
end
