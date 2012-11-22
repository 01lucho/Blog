class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  belongs_to :user

  attr_accessible :content, :title, :user_id, :image
  has_attached_file :image
  #                :url  => "/assets/posts/:id/:style/:basename.:extension",
  #               :path => ":rails_root/public/assets/posts/:id/:style/:basename.:extension"

end
