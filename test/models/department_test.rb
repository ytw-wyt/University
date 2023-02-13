require "test_helper"

class DepartmentTest < ActiveSupport::TestCase
  # Matchers


  # Context
  context "Given context" do
    setup do 
      create_departments
    end

    should "show that all factories are properly created" do
      assert_equal "Information Systems", @is.name
      assert_equal "Computer Science", @cs.name
      assert_equal "76", @english.unit_prefix
      assert @business.active
      deny @soc.active
    end

  end
end