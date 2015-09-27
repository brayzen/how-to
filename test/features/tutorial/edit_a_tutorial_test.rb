require 'test_helper'

feature "As the site owner, I want to edit a Tutorial Title so that I can correct typos" do
  scenario "editing an existing Tutorial title" do
    # Given an existing project
    visit edit_tutorial_path(1)

    # When I make changes
    fill_in 'Title', with: "My Radder Portfolio"
    click_on "Update Tutorial"

    # Then the changes should be saved and shown
    page.text.must_include "My Radder Portfolio"
    page.text.wont_include "Public Speaking"
  end
end
