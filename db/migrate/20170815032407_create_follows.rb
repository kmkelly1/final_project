class CreateFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :follows do |t|
      t.integer :send_user_id
      t.integer :receive_user_id

      t.timestamps

    end
  end
end
