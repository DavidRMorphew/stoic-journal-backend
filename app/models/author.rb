class Author < ApplicationRecord
    has_many :works
    has_many :quotes, through: :works
end
