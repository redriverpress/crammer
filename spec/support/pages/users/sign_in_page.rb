require_relative '../users'

module Crammer::Users::SignIn

  class Page < Crammer::Page
    set_url %q(/users/sign_in)
  end
end
