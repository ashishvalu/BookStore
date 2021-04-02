class Author < ApplicationRecord
  has_and_belongs_to_many :books

  validates :name, :phone,:email, presence: true
  validates :phone, length: {in: 10..15}
  validates :email, uniqueness: { message:"Enter Email "},on: :create
  validates :phone, numericality: { only_integer: true }
end
