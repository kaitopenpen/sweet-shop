class Review < ApplicationRecord
  belongs_to :sweet
  validates :point, presence: true
end
