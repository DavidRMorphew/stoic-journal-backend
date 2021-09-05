class Quote < ApplicationRecord
    belongs_to :book
    has_one :author, through: :book
    belongs_to :translator
end
