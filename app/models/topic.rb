class Topic < ApplicationRecord
  varidates :user_id, presence: true
  validates :description, presence: true
  varidates :image, presence: true
  
  belongs_to :user
  
  mount_uploader :image, ImageUploader
end
