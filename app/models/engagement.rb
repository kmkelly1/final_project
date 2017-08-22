# == Schema Information
#
# Table name: engagements
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  artwork_id :integer
#  notes      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  feeling_id :integer
#

class Engagement < ApplicationRecord
    
    belongs_to :artwork
    belongs_to :user
    has_many :comments, :dependent => :destroy
    has_many :responses, :dependent => :destroy
    
end
