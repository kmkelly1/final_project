# == Schema Information
#
# Table name: responses
#
#  id            :integer          not null, primary key
#  engagement_id :integer
#  feeling_id    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Response < ApplicationRecord
    
    belongs_to :engagement
    belongs_to :feeling
    
end
