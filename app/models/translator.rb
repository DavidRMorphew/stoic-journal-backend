class Translator < ApplicationRecord
    has_many :quotes
    has_many :works, through: :quotes
    validates :first_name, :last_name, presence: true
end
