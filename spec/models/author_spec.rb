require 'rails_helper'

RSpec.describe Author, type: :model do
  
  let(:author) {
    Author.create(
      name: "Epictetus"
    )
  }
  
  it "requires the presence of a name" do
    expect(Author.new).not_to be_valid
  end

  it "has many works" do
    first_work = Work.create(title: "Discourses")
    second_work = Work.create(title: "Enchiridion")
    author.works << [first_work, second_work]
    expect(author.works.first).to eq(first_work)
    expect(author.works.second).to eq(second_work)
  end
end
