require 'spec_helper'

feature 'Facebook OAuth Authentication', :js do
  use_vcr_cassette 'facebook_oauth', :match_requests_on => [:uri]

  scenario 'Facebook link redirects to the Facebook OAuth url' do
    visit root_path

    click_link 'Facebook'
    current_url.should match /^https:\/\/www.facebook.com\/dialog/
  end

  scenario 'Handling a Facebook callback' do
    visit oauth2_callback_path(:provider => :facebook, :code => 'test-auth-code')

    current_path.should eq dashboard_path
    page.should have_content '123456789'
  end
end
