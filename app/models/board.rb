class Board < ApplicationRecord
  belongs_to :layout
  has_one_attached :image
end
