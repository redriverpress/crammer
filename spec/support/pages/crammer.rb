module Crammer
  class Page < SitePrism::Page

    section :header, 'header.main' do
      element :log_in_link,  'a', text: 'Log in'
      element :log_out_link, 'a', text: 'Log out'
      element :email_link, '.email a'
    end

  end

  class Section < SitePrism::Section

  end
end
