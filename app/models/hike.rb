class Hike < ApplicationRecord
  validates :name, :description, presence: true
end
