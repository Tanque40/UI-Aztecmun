require 'test_helper'

class InterfazControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get interfaz_index_url
    assert_response :success
  end

  test "should get CDE" do
    get interfaz_CDE_url
    assert_response :success
  end

  test "should get UNEP" do
    get interfaz_UNEP_url
    assert_response :success
  end

  test "should get CIJ" do
    get interfaz_CIJ_url
    assert_response :success
  end

  test "should get NATO" do
    get interfaz_NATO_url
    assert_response :success
  end

end
