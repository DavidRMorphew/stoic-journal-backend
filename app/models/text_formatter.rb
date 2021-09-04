
class TextFormatter < ApplicationRecord
    # Test text
    # meditations = File.open("./texts/marcus_aurelius_meditations.txt")
    # new_file = meditations.read

    attr_accessor :current_book_number

    @@current_book_number = ""

    def self.create_paragraphs(text_file)
        sections_split = text_file.split(/\n\n/)
        array_of_sections = sections_split.map do |section|
            if section.match(/BOOK/)
                set_book_number(section)
            elsif section.match(/AUTHOR/)
                # method to set author for quotes: set_author(section)
            elsif section.match(/TRANSLATOR/)
                # method to set translator for quotes set_translator(section)
            else
                section
            end
        end
        array_of_sections.compact
    end

    def self.set_book_number(book_number)
        # Quote.new's quote instance addes book_number attribute of the current Book_number
    end

end