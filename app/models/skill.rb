class Skill < ActiveRecord::Base
  validates :skill_name, :presence => true
  validates :skill_description, :presence => true
end
