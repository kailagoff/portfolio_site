class Project < ActiveRecord::Base
  validates :project_name, :presence => true
  validates :project_link, :presence => true
  has_attached_file :image, styles: { thumb: "250x250#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
