class Customer < ApplicationRecord
  has_many :orders
  validates :email, uniqueness: true#, if: :persisted?
  validates :firstname, presence: true, if: :persisted?
end
