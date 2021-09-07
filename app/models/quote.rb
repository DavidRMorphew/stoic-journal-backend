class Quote < ApplicationRecord
    belongs_to :work
    has_one :author, through: :work
    belongs_to :translator
end
