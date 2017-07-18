module LayoutSteps
  extend SpecSteps

  step 'I should see the page header' do
    expect(@page).to have_header
  end

  step 'I :assert see the page header log in link' do |assert|
    @page.header.tap do |header|
      expect(header).send assert, have_log_in_link
    end
  end

  step 'I :assert see the page header log out link' do |assert|
    @page.header.tap do |header|
      expect(header).send assert, have_log_out_link
    end
  end

  step 'I :assert see the page header email link' do |assert|
    @page.header.tap do |header|
      expect(header).send assert, have_email_link(text: @user.email)
    end
  end
end
