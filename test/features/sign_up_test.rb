require "test_helper"

class SignUpTest < Capybara::Rails::TestCase
  test "Can signup a user" do
  visit root_path
  click_link "Sign Up"

  fill_in "Email", with: "email@example.com"
  fill_in "Password", with: "12345678"
  fill_in "Password Confirmation", with: "12345678"
  click_button "Sign Up"

  assert_content page, "Welcome"
  end
end
