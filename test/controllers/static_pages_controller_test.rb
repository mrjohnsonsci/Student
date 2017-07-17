require 'test_helper'

 def setup
    @base_title = "Peter Johnson's Classroom Tools"
 end
  
class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    #assert_select "title", "Home | #{@base_title}"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end

end
