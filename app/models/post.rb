class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :post_content, :presence => true
  has_attached_file :image, styles: { large: "400x400#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  has_many :comments
end
