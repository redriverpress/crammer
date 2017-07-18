require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do

  let(:user) { create :user }

  describe '#welcome' do

    context 'as guest' do
      before { get :welcome }

      it { should respond_with :ok }

      it { should render_template :welcome }
    end

    context 'as user' do
      before do
        sign_in user
        get :welcome
      end

      it { should respond_with :ok }

      it { should render_template :welcome }
    end
  end

end
