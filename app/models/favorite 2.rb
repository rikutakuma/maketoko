class Favorite < ApplicationRecord

belongs_to :user
belongs_to :send

validates_uniqueness_of :send_id, scope: :user_id


end
