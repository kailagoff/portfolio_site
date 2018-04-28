class Skill < ActiveRecord::Base
  validates :skill_name, :presence => true
  validates :skill_description, :presence => true
  has_attached_file :image, styles: { thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
