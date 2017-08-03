require 'test_helper'

class CataloguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catalogue = catalogues(:one)
  end

  test "should get index" do
    get catalogues_url
    assert_response :success
  end

  test "should get new" do
    get new_catalogue_url
    assert_response :success
  end

  test "should create catalogue" do
    assert_difference('Catalogue.count') do
      post catalogues_url, params: { catalogue: { admin_user_id: @catalogue.admin_user_id, clase: @catalogue.clase, descripcion: @catalogue.descripcion, orden: @catalogue.orden } }
    end

    assert_redirected_to catalogue_url(Catalogue.last)
  end

  test "should show catalogue" do
    get catalogue_url(@catalogue)
    assert_response :success
  end

  test "should get edit" do
    get edit_catalogue_url(@catalogue)
    assert_response :success
  end

  test "should update catalogue" do
    patch catalogue_url(@catalogue), params: { catalogue: { admin_user_id: @catalogue.admin_user_id, clase: @catalogue.clase, descripcion: @catalogue.descripcion, orden: @catalogue.orden } }
    assert_redirected_to catalogue_url(@catalogue)
  end

  test "should destroy catalogue" do
    assert_difference('Catalogue.count', -1) do
      delete catalogue_url(@catalogue)
    end

    assert_redirected_to catalogues_url
  end
end
