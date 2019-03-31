class Shop < ApplicationRecord
  has_many :menus

  validates :name, presence: true
  validates :address, presence: true
end
