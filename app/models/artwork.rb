# == Schema Information
#
# Table name: artworks
#
#  id         :integer          not null, primary key
#  title      :string
#  date       :date
#  medium     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string
#  maker      :string
#

class Artwork < ApplicationRecord
    
    belongs_to :artist
    has_many :users, :through => :engagements, :source => :user
    
    
end
