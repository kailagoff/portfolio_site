class Project < ActiveRecord::Base
  validates :project_name, :presence => true
  validates :project_link, :presence => true
  has_attached_file :image, styles: { large: "400x200#", thumb: "250x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
