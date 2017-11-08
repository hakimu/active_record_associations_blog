class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :tasks
  accepts_nested_attributes_for :comments
  accepts_nested_attributes_for :tasks
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true
  
  # def comments_attributes=(comments_attributes)
  #   comments_attributes.each do |comment_attributes|
  #     self.comments.build(comment_attributes)
  #   end
  # end
end
