require 'rails_helper'

RSpec.describe Currency, :type => :model do
    before(:each) do
       Currency.create(name: "Before test", code: "BST")
      end
  it "is valid with valid attributes" do
    currency = Currency.new(name: "test", code: "TST")
    expect(currency).to be_valid
  end

  it "is not valid without a name" do
    currency = Currency.new(code: "TST")
    expect(currency).to_not be_valid
  end
  
  it "is not valid without a code" do
    currency = Currency.new(name: "test")
    expect(currency).to_not be_valid
  end
  
  it "is not valid without a code longer than 3 characters" do
    currency = Currency.new(name: "test", code: "TEST")
    expect(currency).to_not be_valid
  end
  
  it "is not valid with a duplicated code" do
    currency = Currency.new(name: "test", code: "BST")
    expect(currency).to_not be_valid
  end
end