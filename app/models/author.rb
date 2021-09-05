class Author < ApplicationRecord
    has_many :books
    has_many :quotes, through: :books
end
