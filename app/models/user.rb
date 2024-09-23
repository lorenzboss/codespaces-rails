class User < ApplicationRecord
  has_secure_password
  
  enum role: { user: 0, podcaster: 1, admin: 2 }
  
  has_many :comments
  has_many :ratings
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 12 }, if: -> { new_record? || changes[:password_digest] }
  validates :role, presence: true
  validates :team_size, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
end