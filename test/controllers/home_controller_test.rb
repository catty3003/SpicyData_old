require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get insertdata" do
    get :insertdata
    assert_response :success
  end

  test "should get showdata" do
    get :showdata
    assert_response :success
  end

  test "should get editdata" do
    get :editdata
    assert_response :success
  end

  test "should get informations" do
    get :informations
    assert_response :success
  end

  test "should get discussions" do
    get :discussions
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

end
