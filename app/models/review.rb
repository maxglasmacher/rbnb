class Review < ApplicationRecord
  belongs_to :yacht

  validates :rating, presence: true, inclusion: { in: [1,2,3,4,5] }
end
