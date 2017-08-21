class AddMakerToArtwork < ActiveRecord::Migration[5.1]
  def change
    
    
    add_column :artworks, :maker, :string
    remove_column :artworks, :artist_id

  end
end
