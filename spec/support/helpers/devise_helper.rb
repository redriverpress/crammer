module DeviseHelper
  extend SpecHelper

  def sign_in(user)
    login_as(user, scope: :user)
  end
end
