class CreateArtworks < ActiveRecord::Migration[5.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.date :date
      t.integer :artist_id
      t.string :medium

      t.timestamps

    end
  end
end
