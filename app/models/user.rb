class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :comments
  # def comments_attributes=(comments_attributes)
  #   comments_attributes.each do |comment_attributes|
  #     self.comments.build(comment_attributes)
  #   end
  # end
end
