require "test_helper"

class LoginCanViewTimelineTest < Capybara::Rails::TestCase
  test "Cannot view timeline when not logged in" do
    me = User.create email: "rich@example.com", password: "12345678"

    visit root_path
    refute_content page, "#timeline"
  end

end
