class Book < ActiveRecord::Base
  has_many :reviews
  
  validates :title, presence: true, length: {minimum: 3}
  validates :author, presence: true, length: {minimum: 3}
end
