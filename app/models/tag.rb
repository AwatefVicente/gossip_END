class Tag < ApplicationRecord
  has_many :gossips
  validates :title, presence: true
end
