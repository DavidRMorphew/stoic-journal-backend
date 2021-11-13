class Quote < ApplicationRecord
    validates :body, :section_num, :book_num, presence: true
    validates :work, uniqueness: { scope: [:book_num, :section_num] }
    belongs_to :work
    has_one :author, through: :work
    belongs_to :translator

    def translator_name
        self.translator.first_name + ' ' + self.translator.last_name
    end
end
