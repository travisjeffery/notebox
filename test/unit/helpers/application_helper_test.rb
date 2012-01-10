require 'test_helper'

class ApplicationHelperTest < ActiveSupport::TestCase
  include ApplicationHelper

  context "search query" do
    should "be 'Search' if no query key in params" do
      result = search_field_value
      assert_equal "Search", result
    end

    should "be what's in params[:query] if there is something there" do
      result = search_field_value query: "My search query"
      assert_equal "My search query", result
    end
  end
end
