class Comment < ActiveRecord::Base
  belongs_to :post
  validates :comment_content, :presence => true
  validates :author, :presence => true
  validates :post_id, :presence => true
end
