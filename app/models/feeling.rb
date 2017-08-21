# == Schema Information
#
# Table name: feelings
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Feeling < ApplicationRecord
    
    has_many :responses, :dependent => :destroy
    has_many :engagements, :through => :responses, :source => :engagement
    
    has_many :engagements, :through => :responses, :source => :engagement
    
end
