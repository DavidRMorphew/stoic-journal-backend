require 'rails_helper'

RSpec.describe Author, type: :model do
  it "requires the presence of a name" do
    expect(Author.new).not_to be_valid
  end
end
