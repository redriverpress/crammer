require 'rails_helper'

RSpec.describe Crammer::Class, type: :model do

  subject { create :crammer_class }

  context 'assocaitions' do
    it { should belong_to :user }
  end

  context 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :user }
  end
end
