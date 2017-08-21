class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :engagement_id
      t.string :body
      t.integer :user_id

      t.timestamps

    end
  end
end
