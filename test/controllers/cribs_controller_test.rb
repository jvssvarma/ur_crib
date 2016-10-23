require 'test_helper'

class CribsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crib = cribs(:one)
  end

  test "should get index" do
    get cribs_url
    assert_response :success
  end

  test "should get new" do
    get new_crib_url
    assert_response :success
  end

  test "should create crib" do
    assert_difference('Crib.count') do
      post cribs_url, params: { crib: { availability: @crib.availability, rent: @crib.rent, summary: @crib.summary, title: @crib.title } }
    end

    assert_redirected_to crib_url(Crib.last)
  end

  test "should show crib" do
    get crib_url(@crib)
    assert_response :success
  end

  test "should get edit" do
    get edit_crib_url(@crib)
    assert_response :success
  end

  test "should update crib" do
    patch crib_url(@crib), params: { crib: { availability: @crib.availability, rent: @crib.rent, summary: @crib.summary, title: @crib.title } }
    assert_redirected_to crib_url(@crib)
  end

  test "should destroy crib" do
    assert_difference('Crib.count', -1) do
      delete crib_url(@crib)
    end

    assert_redirected_to cribs_url
  end
end
