class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :post_content, :presence => true
end
