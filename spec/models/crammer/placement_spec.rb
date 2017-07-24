require 'rails_helper'

RSpec.describe Crammer::Placement, type: :model do
  it "is valid with user and crammer_class" do
    expect(Crammer::Placement.new).to be_valid
  end

  it "is not valid without a user"
  it "is not valid without a crammer_class"
end
