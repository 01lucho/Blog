class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  belongs_to :user

  attr_accessible :content, :title, :user_id

  #validates :title, :presence => true
  #validates :content, :presence => true,
                   # :length => { :minimum => 5 }

  #validates :user_id, :presence => true
end
