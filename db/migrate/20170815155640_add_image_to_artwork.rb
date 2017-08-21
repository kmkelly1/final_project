class AddImageToArtwork < ActiveRecord::Migration[5.1]
  def change
    add_column :artworks, :image, :string
  end
end
