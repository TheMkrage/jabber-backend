require 'test_helper'

class UserErrorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_error = user_errors(:one)
  end

  test "should get index" do
    get user_errors_url, as: :json
    assert_response :success
  end

  test "should create user_error" do
    assert_difference('UserError.count') do
      post user_errors_url, params: { user_error: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show user_error" do
    get user_error_url(@user_error), as: :json
    assert_response :success
  end

  test "should update user_error" do
    patch user_error_url(@user_error), params: { user_error: {  } }, as: :json
    assert_response 200
  end

  test "should destroy user_error" do
    assert_difference('UserError.count', -1) do
      delete user_error_url(@user_error), as: :json
    end

    assert_response 204
  end
end
