class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :podcast
  
  validates :stars, inclusion: { in: 1..5 }
end