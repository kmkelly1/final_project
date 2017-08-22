class AddFeelingToEngagement < ActiveRecord::Migration[5.1]
  def change
    
   
  add_column :engagements, :feeling_id, :integer

  end
end
