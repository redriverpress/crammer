module SignInSteps
  extend SpecSteps

  step 'I am a/an user' do
    @user = create(:user)
    sign_in @user
  end

  step 'I am a/an guest' do
    @user = build(:user)
  end
end
