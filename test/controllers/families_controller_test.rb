require 'test_helper'

class FamiliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @family = families(:one)
  end

  test "should get index" do
    get families_url
    assert_response :success
  end

  test "should get new" do
    get new_family_url
    assert_response :success
  end

  test "should create family" do
    assert_difference('Family.count') do
      post families_url, params: { family: { admin_user_id: @family.admin_user_id, ape_nom: @family.ape_nom, employee_id: @family.employee_id, fec_nac: @family.fec_nac, tipo_rela: @family.tipo_rela } }
    end

    assert_redirected_to family_url(Family.last)
  end

  test "should show family" do
    get family_url(@family)
    assert_response :success
  end

  test "should get edit" do
    get edit_family_url(@family)
    assert_response :success
  end

  test "should update family" do
    patch family_url(@family), params: { family: { admin_user_id: @family.admin_user_id, ape_nom: @family.ape_nom, employee_id: @family.employee_id, fec_nac: @family.fec_nac, tipo_rela: @family.tipo_rela } }
    assert_redirected_to family_url(@family)
  end

  test "should destroy family" do
    assert_difference('Family.count', -1) do
      delete family_url(@family)
    end

    assert_redirected_to families_url
  end
end