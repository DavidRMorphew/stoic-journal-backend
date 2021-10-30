require 'rails_helper'

RSpec.describe Quote, type: :model do
  
  let(:author) {
    Author.create(
      name: "Epictetus"
    )
  }
  
  let(:work) {
    Work.create(
      title: "Enchiridion"
    )
  }

  let(:work_two){
    Work.create(
      title: "Discourses"
    )
  }

  let(:translator) {
    Translator.create(
      first_name: "Stephen",
      last_name: "Walton"
    )
  }
  
  let(:no_body_quote) {
    Quote.new(
      work: work,
      translator: translator,
      book_num: "I",
      section_num: 2
    )
  }

  let(:no_section_num_quote) {
    Quote.new(
      work: work,
      body: "There's a quote here",
      translator: translator,
      book_num: "I",
    )
  }

  let(:no_book_num_quote) {
    Quote.new(
      work: work,
      body: "There's a quote here",
      translator: translator,
      section_num: 1,
    )
  }

  let(:valid_quote) {
    Quote.create(
      work: work,
      body: "There's a quote here",
      translator: translator,
      book_num: "II",
      section_num: 1
    )
  }

  let(:valid_quote_book_num_duplicate) {
    Quote.new(
      work: work,
      body: "There's a quote here",
      translator: translator,
      book_num: "II",
      section_num: 1
    )
  }
  
  it "requires a text body" do
    work.author = author
    expect(no_body_quote).not_to be_valid
  end

  it "requires a section number" do
    work.author = author
    expect(no_section_num_quote).not_to be_valid
  end

  it "requires a book number" do
    work.author = author
    expect(no_book_num_quote).not_to be_valid
  end

  it "requires that the combination of book and section numbers for a quote be unique for each work" do
    work.author = author
    work_two.author = author
    expect(valid_quote).to be_valid
    expect(valid_quote_book_num_duplicate).not_to be_valid
  end
end
