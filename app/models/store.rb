class Store < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :infomations, dependent: :destroy
  has_many :sends, dependent: :delete_all
  has_many :relationships, dependent: :destroy
  belongs_to :area

  attachment :store_image

  validates :corporation_name, presence: true
  validates :store_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :postal_code, presence: true, format: { with: /\A\d{7}\z/ }
  validates :address, presence: true
  validates :telephone_number, presence: true, format: { with: /\A\d{10,11}\z/ }

  def relationshiped_by?(user)
    relationships.where(user_id: user.id).exists?
  end
end
