class Work < ApplicationRecord
    validates :title, presence: true
    # belongs_to :author
    has_many :quotes
    has_many :translators, through: :quotes
end
