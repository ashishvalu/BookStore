class Book < ApplicationRecord
  belongs_to :publisher
  belongs_to :categary
  has_and_belongs_to_many :authors
  has_many :carts, dependent: :destroy
  has_one_attached :image

  scope :high_to_low, -> { order 'price DESC' }
  scope :low_to_high, -> { order 'price ASC' }
  scope :latest_books, -> { order 'created_at DESC' }
  scope :old_books, -> { order 'created_at ASC' }



  validates :name, presence: true
  validates :isbn10,length: {is:10}
  validates :isbn13,length: {is:13}
end
