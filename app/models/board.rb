class Board < ApplicationRecord
  has_many :songs, dependent: :destroy
end
