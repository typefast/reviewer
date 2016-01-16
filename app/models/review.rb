class Review < ActiveRecord::Base
  belongs_to :book
  
  validates :name, presence: true, length: {minimum: 3}
  validates :comment, presence: true, length: {minimum: 3}
end
