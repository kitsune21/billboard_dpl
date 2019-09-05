class Song < ApplicationRecord
  has_many :artist, dependent: :destroy
  belongs_to :board
end
