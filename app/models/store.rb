class Store < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :infomations, dependent: :destroy
  has_many :sends, dependent: :destroy

  attachment :store_image

  validates :corporation_name, presence: true
  validates :store_name, presence: true

end
