class Photo < ActiveRecord::Base
  validates :photo_name, :presence => true
  validates :photo_description, :presence => true
end
