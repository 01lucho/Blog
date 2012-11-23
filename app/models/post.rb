class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  belongs_to :user

  attr_accessible :content, :title, :user_id, :image
  has_attached_file :image
 
  has_attached_file :image, :styles => { :small => "150x150>" }
    
  validates_attachment_size :image, :less_than => 5.megabytes
end
