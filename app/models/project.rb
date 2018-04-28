class Project < ActiveRecord::Base
  validates :project_name, :presence => true
  validates :project_link, :presence => true
  has_attached_file :image, styles: { large: "500x500#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
