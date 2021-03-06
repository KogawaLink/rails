class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }
  validates :email, presence: true, format: { with: /\w+@[a-z\d]+\.\w/ }
  validates :password, length: { in: 8..32 }, presence: true,format: { with: /(?=.*?[a-zA-Z])(?=.*?[\d])/ }
  has_secure_password
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source:'topic'
  def favorited_by?(post_id)
    favorites.where(post_id: post_id).exists?
  end
end
