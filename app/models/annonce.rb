class Annonce < ActiveRecord::Base
  has_many :favs
  has_many :messages, dependent: :destroy
  has_many :appointments
  belongs_to :user
  validates :title, presence: true, uniqueness: true, length: { in: 15..60 }
  validates :description, presence: true, uniqueness: true, length: { in: 150..500 }
  geocoded_by :city
  after_validation :geocode
  # validates :address, presence: true, uniqueness: true
  validates :city, presence: true
  validates :turnover, presence: true
  validates :margin, presence: true
  validates :total_area, presence: true
  # has_attached_file :picture,
  #   styles: { medium: "300x300>", thumb: "100x100>" }

  # validates_attachment_content_type :picture,
  #   content_type: /\Aimage\/.*\z/
  mount_uploader :picture, PictureUploader

  def fav(current_user)
    self.favs.where(user: current_user).take
  end
end
