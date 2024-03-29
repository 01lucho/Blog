class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :likes
  attr_accessible :alias, :comment, :user_id

  validates :comment, :presence => true
end
