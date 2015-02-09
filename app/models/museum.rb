class Museum < ActiveRecord::Base
  has_many :events
  has_many :rsvps, through: :events
  has_many :users, through: :rsvps

  has_many :collections
  has_many :artworks, through: :collections
  has_many :artists, through: :artworks
end
