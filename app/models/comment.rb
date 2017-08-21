# == Schema Information
#
# Table name: comments
#
#  id            :integer          not null, primary key
#  engagement_id :integer
#  body          :string
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Comment < ApplicationRecord
    
    belongs_to :user
    belongs_to :engagement

end
