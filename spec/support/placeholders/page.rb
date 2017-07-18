placeholder :page do
  match /welcome/ do
    Crammer::Welcome::Page
  end
  match /sign in/ do
    Crammer::Users::SignIn::Page
  end
end
