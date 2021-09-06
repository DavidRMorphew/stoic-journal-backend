class TextFormatter < ApplicationRecord
    # Test text
    # meditations = File.open("./texts/marcus_aurelius_meditations.txt")
    # new_file = meditations.read

    attr_accessor :current_book_number

    @@current_book_number = ""

    def self.create_paragraphs(text_file)
        sections_split = text_file.split(/\n\n/)
        array_of_sections = []
        sections_split.each do |section|
            case section
            when /AUTHOR/
                # method to set author for quotes: set_author(section)
                author_name = section.split(": ")[1]
            when /TITLE/
                # method to set title for quotes set_title(section)
            when /TRANSLATOR/
                # method to set translator for quotes set_translator(section)
            when /BOOK/
                set_book_number(section)
            else
                array_of_sections << section
            end
        end
        array_of_sections.compact
    end

    def self.find_or_create_author_by_name(name)
        author = (Author.find_by(name: name) || Author.create(name: name))
    end
    
    def self.set_book_number(book_number)
        # Quote.new's quote instance addes book_number attribute of the current Book_number
    end

end