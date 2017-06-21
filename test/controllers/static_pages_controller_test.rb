require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @main_title = "Sample App"
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select 'title', "Home | #{@main_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select 'title', "About | #{@main_title}"
  end
  
  test "should get faq" do
    get static_pages_faq_url
    assert_response :success
    assert_select 'title', "Faq | #{@main_title}"
  end
  
  test "should get tos" do
    get static_pages_tos_url
    assert_response :success
    assert_select 'title', "Terms of Service | #{@main_title}"
  end
  
  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select 'title', "Contact | #{@main_title}"
  end
  
  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select 'title', "Help | #{@main_title}"
  end
end
