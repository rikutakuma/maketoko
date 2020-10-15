class Relationship < ApplicationRecord


  	belongs_to :user
	belongs_to :store

	validates_uniqueness_of :store_id, scope: :user_id

	def relationshiped_by?(user)
    	relationships.where(user_id: user.id).exists?
  	end


end
