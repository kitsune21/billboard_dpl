class Song < ApplicationRecord
  belongs_to :Artist
  belongs_to :Board, optional: true
end
