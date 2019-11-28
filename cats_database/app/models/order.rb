class Order < ApplicationRecord
  belongs_to :customer #, optional: true - if we can store anonymous order
  validates :name, uniqueness: true#, if: :persisted?
end
