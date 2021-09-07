class TextFormatter < ApplicationRecord
    # Test text
    # meditations = File.open("./texts/marcus_aurelius_meditations.txt")
    # new_file = meditations.read

    def self.create_paragraphs(text_file)
        sections_split = text_file.split(/\n\n/)
        sections_split.each do |section|
            case section
            when /AUTHOR/
                author_name = section.split(": ")[1]
                @@author = self.find_or_create_author_by_name(author_name)
            when /TITLE/
                work_title = section.split(": ")[1]
                @@work = self.find_or_create_work_by_title(work_title)
            when /TRANSLATOR/
                translator_name = section.split(": ")[1]
                @@translator = self.find_or_create_translator_by_name(translator_name)
            when /BOOK/
                @@book = section.split(" ")[1]
                @@section_num = 1
            else
                @@work.quotes.create(body: section, translator: @@translator, book_num: @@book, section_num: @@section_num)
                @@section_num += 1
            end
        end
    end

    def self.find_or_create_author_by_name(name)
        author = (Author.find_by(name: name) || Author.create(name: name))
    end

    def self.find_or_create_work_by_title(work_title)
        work = (@@author.works.find_by(title: work_title) || @@author.works.create(title: work_title))
    end

    def self.find_or_create_translator_by_name(name)
        first_name = name.split(" ")[0]
        last_name = name.split(" ")[1]
        translator = (Translator.find_by(first_name: first_name, last_name: last_name) || Translator.create(first_name: first_name, last_name: last_name))
    end
end