# require 'test_helper'

# feature "Editing a STEP" do
#   scenario "Submit updates to an existing STEP" do

#     visit new_article_path
#     fill_in "Title", with: "Becoming a Code Fellow"
#     fill_in "Body", with: "Means striving for excellence."
#     click_on 'Create STEP'
#     click_on "Edit"
#     fill_in 'Body', with: "2nd ammendment, went well no?"
#     click_on "Update STEP"
#     page.must_have_content "STEP was successfully updated"
#     # page.must_include "2nd ammendment"
#     page.wont_have_content "Means striving for excellence."
#   end

#   scenario "incorrectly editing an existing project" do
#     visit edit_project_path(projects(:portfolio))
#     fill_in 'Name', with: "grr"
#     click_on "Update Project"
#     page.text.must_include "prohibited"
#     page.text.must_include "Name is too short"
#   end
# end
