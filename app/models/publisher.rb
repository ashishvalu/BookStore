class Publisher < ApplicationRecord
  has_many :books, dependent: :destroy

  validates :name, :phone, :email, presence: true
  validates :phone, length: {in: 10..15}
  validates :email, uniqueness: { message:"Enter new email "}
  validates :phone, numericality: { only_integer: true }
end
