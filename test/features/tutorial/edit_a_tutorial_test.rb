# require 'test_helper'

# feature "As the site owner, I want to edit a project so that I can correct typos" do
#   scenario "editing an existing project" do
#     # Given an existing project
#     visit edit_project_path(projects(:portfolio))

#     # When I make changes
#     fill_in 'Name', with: "My Radder Portfolio"
#     click_on "Update Project"

#     # Then the changes should be saved and shown
#     page.text.must_include "Project was successfully updated."
#     page.text.must_include "My Radder Portfolio"
#     page.text.wont_include "Code Fellows Portfolio"
#   end
# end
