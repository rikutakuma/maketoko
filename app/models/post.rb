class Post < ApplicationRecord
  belongs_to :store
  has_many :tags, dependent: :destroy

  attachment :send_image

  validates :send_comment, presence: true
  validates :send_image, presence: true

end
