require 'rails_helper'

RSpec.describe Work, type: :model do

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

  it "requires the presence of a title" do
    expect(Work.new).not_to be_valid
  end

  it "belongs to an author" do
    author = first_work.create_author(name: "Epictetus")
    second_work.author = author
    expect(first_work.author).to eq(author)
    expect(second_work.author).to eq(author)
  end
end