class Podcaster < ApplicationRecord
  has_many :podcasts
  
  validates :name, presence: true
  validates :team_size, numericality: { greater_than: 0 }
end