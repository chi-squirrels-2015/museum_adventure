class Collection < ActiveRecord::Base
  belongs_to :museum
  has_many :artworks
  has_many :artists, through: :artworks
end
