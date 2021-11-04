require 'rails_helper'

RSpec.describe Translator, type: :model do
  it "requires the presence of a first and last name" do
    expect(Translator.new).not_to be_valid
    expect(Translator.new(first_name: "David", last_name: "Sedley")).to be_valid
    expect(Translator.new(first_name: "David")).not_to be_valid
  end
end
