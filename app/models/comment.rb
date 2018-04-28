class Comment < ActiveRecord::Base
  validates :comment_content, :presence => true
  validates :author, :presence => true
  validates :post_id, :presence => true
end
