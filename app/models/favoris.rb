class Favoris < ActiveRecord::Base
  belongs_to :user
  belongs_to :annonce
end
