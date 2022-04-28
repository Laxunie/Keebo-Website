class Province < ApplicationRecord
    has_many :accounts
    validates :name, :tax, presence: true
end
