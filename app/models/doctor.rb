class Doctor < ApplicationRecord
  has_many :appointments
  has_many :pets, through: :bookmarks
end
