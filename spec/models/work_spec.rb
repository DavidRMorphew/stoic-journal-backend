require 'rails_helper'

RSpec.describe Work, type: :model do
  it "requires the presence of a title" do
    expect(Work.new).not_to be_valid
  end
end