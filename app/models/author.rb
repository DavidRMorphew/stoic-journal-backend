class Author < ApplicationRecord
    validates :name, presence: true
    has_many :works
    # has_many :quotes, through: :works
end
