class Artwork < ActiveRecord::Base
  belongs_to :collection
  belongs_to :artist
end
