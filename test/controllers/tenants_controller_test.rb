require 'test_helper'

class TenantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tenant = tenants(:one)
  end

  test "should get index" do
    get tenants_url
    assert_response :success
  end

  test "should get new" do
    get new_tenant_url
    assert_response :success
  end

  test "should create tenant" do
    assert_difference('Tenant.count') do
      post tenants_url, params: { tenant: { address_id: @tenant.address_id, contact_id: @tenant.contact_id, deleted_at: @tenant.deleted_at, email: @tenant.email, is_active: @tenant.is_active, password: @tenant.password, tenant_name: @tenant.tenant_name } }
    end

    assert_redirected_to tenant_url(Tenant.last)
  end

  test "should show tenant" do
    get tenant_url(@tenant)
    assert_response :success
  end

  test "should get edit" do
    get edit_tenant_url(@tenant)
    assert_response :success
  end

  test "should update tenant" do
    patch tenant_url(@tenant), params: { tenant: { address_id: @tenant.address_id, contact_id: @tenant.contact_id, deleted_at: @tenant.deleted_at, email: @tenant.email, is_active: @tenant.is_active, password: @tenant.password, tenant_name: @tenant.tenant_name } }
    assert_redirected_to tenant_url(@tenant)
  end

  test "should destroy tenant" do
    assert_difference('Tenant.count', -1) do
      delete tenant_url(@tenant)
    end

    assert_redirected_to tenants_url
  end
end
