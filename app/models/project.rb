class Project < ActiveRecord::Base
  validates :project_name, :presence => true
  validates :project_link, :presence => true
end
