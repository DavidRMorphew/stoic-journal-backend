class Work < ApplicationRecord
    belongs_to :author
    has_many :quotes
    has_many :translators, through: :quotes
end
