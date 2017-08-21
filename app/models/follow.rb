# == Schema Information
#
# Table name: follows
#
#  id              :integer          not null, primary key
#  send_user_id    :integer
#  receive_user_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Follow < ApplicationRecord
    
    belongs_to :send_user, :class_name => "User"
    belongs_to :receive_user, :class_name => "User"
    
end
