class Translator < ApplicationRecord
    has_many :quotes
    has_many :works, through: :quotes
end
