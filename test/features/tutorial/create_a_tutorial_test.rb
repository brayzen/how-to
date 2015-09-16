require "test_helper"

feature "As the site owner, I want to add a Tutorial" do
  scenario "adding a new tutorial" do
    visit tutorials_path
    click_on "New Tutorial"
    fill_in "Title", with: "Code Fellows Portfolio"
    save_and_open_page
    click_on "Create Tutorial"
    page.text.must_include "Code Fellows Portfolio"
    assert page.has_css?(".notice"), "Expected a flash notice on this page, none found."
    page.status_code.must_equal 200
  end
end

feature "I want to confirm all submitted data is complete and valid" do
  scenario "new tutorial has invalid data" do
    visit tutorials_path
    click_on "New tutorial"
    fill_in "Title", with: "Iw"
    click_on "Create Tutorial"
    # assert page.has_css?(".notice"), "Error"
    page.text.must_include "Invalid data, please try again."
    page.text.must_include "Title is too short"
  end
end
