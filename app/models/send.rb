class Send < ApplicationRecord

  has_many :favorites
  has_many :genre_relationships
  belongs_to :store
end
