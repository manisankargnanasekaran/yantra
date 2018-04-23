require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { address_id: @user.address_id, auth_tocken: @user.auth_tocken, contact_id: @user.contact_id, deleted_at: @user.deleted_at, email: @user.email, first_name: @user.first_name, is_active: @user.is_active, last_name: @user.last_name, password: @user.password, password_reset_send_at: @user.password_reset_send_at, password_reset_tocken: @user.password_reset_tocken, tenant_id: @user.tenant_id, user_name: @user.user_name } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { address_id: @user.address_id, auth_tocken: @user.auth_tocken, contact_id: @user.contact_id, deleted_at: @user.deleted_at, email: @user.email, first_name: @user.first_name, is_active: @user.is_active, last_name: @user.last_name, password: @user.password, password_reset_send_at: @user.password_reset_send_at, password_reset_tocken: @user.password_reset_tocken, tenant_id: @user.tenant_id, user_name: @user.user_name } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
