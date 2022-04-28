class OrderProduct < ApplicationRecord
  belongs_to :board
  belongs_to :order
end
