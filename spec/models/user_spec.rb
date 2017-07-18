require 'rails_helper'

RSpec.describe User, type: :model do

  subject { create :user }

  context 'associations' do
    it { should have_many(:crammer_classes).class_name('Crammer::Class') }
  end

  context 'validations' do
    it { should validate_presence_of :email }
  end

  described_class::ACCESS_LEVELS.each do |access_level|

    describe "##{access_level}?" do

      let(:method) { :"#{access_level}?" }

      context "as #{access_level}" do
        before { subject.update_attribute :access, access_level }

        it 'should return true' do
          expect(subject.send(method)).to be true
        end
      end

      context "not #{access_level}" do

        let(:other_access_levels) do
          described_class::ACCESS_LEVELS.select do |access|
            access != access_level
          end
        end

        before { subject.update_attribute :access, other_access_levels.sample }

        it 'should return false' do
          expect(subject.send(method)).to be false
        end
      end
    end
  end

end
