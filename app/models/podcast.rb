class Podcast < ApplicationRecord
  belongs_to :podcaster
  belongs_to :category
  has_many :comments
  has_many :ratings
  
  validates :name, presence: true
  validates :description, presence: true
  
  def average_rating
    ratings.average(:stars)
  end
end