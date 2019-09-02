class Artist < ApplicationRecord
  belongs_to :board, dependent: :destroy
  has_many :songs
end
