require 'rails_helper'

RSpec.describe Author, type: :model do
  
  let(:author) {
    Author.create(
      name: "Epictetus"
    )
  }

  let(:first_work) {
    Work.create(
      title: "Discourses"
    )
  }
    
  let(:second_work) {
    Work.create(
      title: "Enchiridion"
    )
  }

  let(:translator) {
    Translator.create(
      first_name: "Stephen",
      last_name: "Walton"
    )
  }

  let(:first_quote) {
    Quote.create(
      work: first_work,
      body: "There's a quote here",
      translator: translator,
      book_num: "II",
      section_num: 1
    )
  }

  let(:second_quote) {
    Quote.create(
      work: second_work,
      body: "There's another quote here",
      translator: translator,
      book_num: "II",
      section_num: 1
    )
  }
  
  it "requires the presence of a name" do
    expect(Author.new).not_to be_valid
  end

  it "has many works" do
    author.works << [first_work, second_work]
    expect(author.works.first).to eq(first_work)
    expect(author.works.second).to eq(second_work)
  end

  it "has many quotes through works" do
    author.works << [first_work, second_work]
    expect(author.quotes).to eq([first_quote, second_quote])
  end
end
