class Send < ApplicationRecord

  has_many :favorites
  has_many :genre_relationships
  belongs_to :store

  attachment :send_image
  attachment :store_image

  validates :send_comment, presence: true
end
