class Send < ApplicationRecord

  belongs_to :store

  attachment :send_image
  attachment :store_image

  validates :send_comment, presence: true

	def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
  	end
end
