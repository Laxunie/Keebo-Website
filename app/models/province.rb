class Province < ApplicationRecord
    has_many :accounts
    validates :name, presence: true
end
