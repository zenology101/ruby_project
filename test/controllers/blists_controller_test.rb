require "test_helper"

class BlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blist = blists(:one)
  end

  test "should get index" do
    get blists_url, as: :json
    assert_response :success
  end

  test "should create blist" do
    assert_difference('Blist.count') do
      post blists_url, params: { blist: { details: @blist.details, subject: @blist.subject } }, as: :json
    end

    assert_response 201
  end

  test "should show blist" do
    get blist_url(@blist), as: :json
    assert_response :success
  end

  test "should update blist" do
    patch blist_url(@blist), params: { blist: { details: @blist.details, subject: @blist.subject } }, as: :json
    assert_response 200
  end

  test "should destroy blist" do
    assert_difference('Blist.count', -1) do
      delete blist_url(@blist), as: :json
    end

    assert_response 204
  end
end
