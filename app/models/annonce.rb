class Annonce < ActiveRecord::Base
  has_many :favoris
  has_many :messages
  has_many :appointments
  validates :title, presence: true, uniqueness: true, length: { in: 15..60 }
  validates :description, presence: true, uniqueness: true, length: { in: 0..500 }
  # validates :address, presence: true, uniqueness: true
  # validates :region, :department, :city, :turnover, :margin, :total_area, presence: true
  # has_attached_file :picture,
  #   styles: { medium: "300x300>", thumb: "100x100>" }

  # validates_attachment_content_type :picture,
  #   content_type: /\Aimage\/.*\z/
  mount_uploader :picture, PictureUploader
end
