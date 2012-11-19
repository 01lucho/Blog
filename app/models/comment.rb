class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :alias, :comment

  validates :alias, :presence => true
  validates :comment, :presence => true
end
