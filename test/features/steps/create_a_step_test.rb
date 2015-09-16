# require 'test_helper'

# feature "Create A Step" do
#   scenario "creates a new step" do
#     create_tut('How to speak in Public')
#     current_path.should == new_tutorial_step_path
#   end
# end

# feature "Creating an Article as an Author" do
#   scenario "submit form data to create a new article" do
#     # log_in
#     sign_in(:author)
#     visit new_article_path
#     fill_in "Title", with: articles(:cr).title
#     fill_in "Body", with: articles(:cr).body
#     click_on 'Create Article'
#     page.wont_have_content "Goobye All!"
#     page.has_css? "#author"
#     page.text.must_include users(:author).email
#     page.text.must_include "Status: Unpublished"
#   end
# end
