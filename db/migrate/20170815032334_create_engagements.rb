class CreateEngagements < ActiveRecord::Migration[5.0]
  def change
    create_table :engagements do |t|
      t.integer :user_id
      t.integer :artwork_id
      t.text :notes

      t.timestamps

    end
  end
end
