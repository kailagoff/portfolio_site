class Photo < ActiveRecord::Base
  validates :photo_name, :presence => true
  validates :photo_description, :presence => true
  has_attached_file :image, styles: { large: "450x450#", medium: "250x250#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
