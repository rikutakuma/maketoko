class GenreRelationship < ApplicationRecord

  belongs_to :genre
  belongs_to :send
end
