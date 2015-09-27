require "test_helper"

feature "It should display all tutorials" do
  scenario "viewing all tutorials" do
    # Given a a couple of tutorials (loaded from fixtures)
    # When I visit /tutorials
    visit tutorials_path
    # Then I should see a list of tutorials
    page.text.must_include 'Public Speaking'
    page.text.must_include 'How to RAILS'
  end
end
