class Artist < ApplicationRecord
  belongs_to :board, dependent: :destroy
end
