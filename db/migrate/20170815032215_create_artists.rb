class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :nationality
      t.date :dob
      t.date :dod
      t.string :name

      t.timestamps

    end
  end
end
