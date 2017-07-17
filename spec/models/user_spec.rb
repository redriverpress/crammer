require 'rails_helper'

RSpec.describe User, type: :model do

  subject { create :user }

  context 'validations' do
    it { should validate_presence_of :email }
  end

end
