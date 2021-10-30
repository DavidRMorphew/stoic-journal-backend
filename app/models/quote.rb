class Quote < ApplicationRecord
    validates :body, :section_num, presence: true
    belongs_to :work
    has_one :author, through: :work
    belongs_to :translator
end
