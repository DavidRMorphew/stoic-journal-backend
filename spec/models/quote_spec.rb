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
  
  it "requires a text body" do
    work.author = author
    expect(no_body_quote).not_to be_valid
  end

  it "requires a section_num" do
    work.author = author
    expect(no_section_num_quote).not_to be_valid
  end
end
