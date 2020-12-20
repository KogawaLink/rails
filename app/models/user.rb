class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }
  validates :email, presence: true, format: { with: /\w+@[a-z\d]+\.\w/ }
  validates :password, length: { in: 8..32 }, presence: true,format: { with: /(?=.*?[a-zA-Z])(?=.*?[\d])/ }
  has_secure_password
  has_many :topics
end
