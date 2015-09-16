ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "capybara"
require "minitest/rails/capybara"
require "minitest/pride"

class ActiveSupport::TestCase
  fixtures :all
end

def create_a_tut(title)
  visit tutorials_path
  click_on 'Make a new tutorial'
  fill_in "Title", with: "#{title}"
  click_on 'Create Tutorial'
  page.text.must_include "#{title}"
end
