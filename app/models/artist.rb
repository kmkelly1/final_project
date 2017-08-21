# == Schema Information
#
# Table name: artists
#
#  id          :integer          not null, primary key
#  nationality :string
#  dob         :date
#  dod         :date
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Artist < ApplicationRecord
    
    has_many :artworks, :dependent => :destroy
    
end
