require 'rails_helper'

RSpec.describe Translator, type: :model do
  
  let(:translator) {
    Translator.create(
      first_name: "David", 
      last_name: "Sedley"
    )
  }

  let(:translator_duplicate) {
    Translator.new(
      first_name: "David", 
      last_name: "Sedley"
    )
  }
  
  it "requires the presence of a first and last name" do
    expect(Translator.new).not_to be_valid
    expect(translator).to be_valid
    expect(Translator.new(first_name: "David")).not_to be_valid
    expect(Translator.new(last_name: "Konstan")).not_to be_valid
  end

  it "requires the uniqueness of an translator by first and last name" do
  end
end
