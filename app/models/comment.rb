class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :podcast
  
  validates :title, presence: true
  validates :content, presence: true
end