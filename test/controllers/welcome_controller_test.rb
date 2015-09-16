require "test_helper"

feature "Welcome page exists" do
  scenario "Welcome is on the root page" do
    visit root_path
    page.text.must_include "WELCOME"
  end
end
