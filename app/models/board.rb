class Board < ApplicationRecord
  belongs_to :layout
  has_one_attached :image
  validates :kit, :keycaps, :switches, :stabilizers, presence: true
  paginates_per 6
  def self.search(search)
    if search
        types = Board.where("kit like ?", "%#{search}%").or(Board.where("keycaps like ?", "%#{search}%")).or(Board.where("stabilizers like ?", "%#{search}%"))
        .or(Board.where("switches like ?", "%#{search}%"))
        if types
            types
        else
            Board.all
        end
    else
        Board.all
    end
end
end
