require 'test_helper'

feature 'I want to delete a Tutorial' do
  scenario 'delete my tutorial when I say' do
    visit tutorials_path
    first(:link, 'Show').click
    click_on 'Delete tut'
    page.text.wont_include "Public Speaking"
    page.text.must_include "How to RAILS"
  end
end
