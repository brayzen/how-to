require "test_helper"

feature "As the site visitor, I want to see a developer's portfolio" do
  scenario "viewing all tutorials" do
    # Given a a couple of tutorials (loaded from fixtures)
    # When I visit /tutorials
    visit new_tutorial_step
    # Then I should see a list of tutorials
    page.text.must_include "Who are you, what are you doing"
    page.text.wont_include "Ruby, Rails"
  end
end
