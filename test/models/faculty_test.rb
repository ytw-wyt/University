require "test_helper"

class FacultyTest < ActiveSupport::TestCase
  # Matchers
  should belong_to(:department)
  should have_many(:assignments)
  should have_many(:courses).through(:assignments)

  should validate_presence_of(:first_name)
  should validate_presence_of(:last_name)
  
  # should validates_inclusion_of

  should allow_value("Assistant Professor").for(:rank)
  should allow_value("Associate Professor").for(:rank)
  should allow_value("Professor").for(:rank)
  should_not allow_value("Professr").for(:rank)
  should_not allow_value("Student").for(:rank)


  # Context
  context "Given context" do
    setup do 
      # build the testing context here...
      create_departments
      create_faculties
    end

    teardown do 
      # build the testing context here...
      destroy_faculties
      destroy_departments
    end

    # with that testing context, write your tests...

    # test factory 
    should "show that all factories are properly created" do
      assert_equal "Jeria", @profq.first_name
      assert_equal "Quesenberry", @profq.last_name
      assert_equal "Emily", @emily.first_name
      assert_equal "Cooper", @emily.last_name
      assert_equal "Leo", @leo.first_name
      assert_equal "Cooper", @leo.last_name
      assert @profq.active
      assert @emily.active
      deny @leo.active
    end

    # test the scope 'alphabetical'
    should "shows that there are three faculties in in alphabetical order" do
      assert_equal ["Emily", "Leo", "Jeria"], Faculty.alphabetical.map{|o| o.first_name}
    end

    # test the scope 'active'
    should "shows that there are two active faculties" do
      assert_equal ["Emily", "Jeria"], Faculty.active.map{|o| o.first_name}.sort
    end

  end
end
