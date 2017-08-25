require 'test_helper'

class SuppliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplier = suppliers(:one)
  end

  test "should get index" do
    get suppliers_url
    assert_response :success
  end

  test "should get new" do
    get new_supplier_url
    assert_response :success
  end

  test "should create supplier" do
    assert_difference('Supplier.count') do
      post suppliers_url, params: { supplier: { activo: @supplier.activo, admin_user_id: @supplier.admin_user_id, calificacion: @supplier.calificacion, correo_pais: @supplier.correo_pais, correo_representante: @supplier.correo_representante, des_proveedor: @supplier.des_proveedor, des_representante: @supplier.des_representante, direccion_pais: @supplier.direccion_pais, fec_registro: @supplier.fec_registro, mod_registro: @supplier.mod_registro, nro_representante: @supplier.nro_representante, num_documento_pais: @supplier.num_documento_pais, numero_proveedor: @supplier.numero_proveedor, observacion: @supplier.observacion, pag_weeb: @supplier.pag_weeb, telefono_pais: @supplier.telefono_pais, tipo_proveedor: @supplier.tipo_proveedor } }
    end

    assert_redirected_to supplier_url(Supplier.last)
  end

  test "should show supplier" do
    get supplier_url(@supplier)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplier_url(@supplier)
    assert_response :success
  end

  test "should update supplier" do
    patch supplier_url(@supplier), params: { supplier: { activo: @supplier.activo, admin_user_id: @supplier.admin_user_id, calificacion: @supplier.calificacion, correo_pais: @supplier.correo_pais, correo_representante: @supplier.correo_representante, des_proveedor: @supplier.des_proveedor, des_representante: @supplier.des_representante, direccion_pais: @supplier.direccion_pais, fec_registro: @supplier.fec_registro, mod_registro: @supplier.mod_registro, nro_representante: @supplier.nro_representante, num_documento_pais: @supplier.num_documento_pais, numero_proveedor: @supplier.numero_proveedor, observacion: @supplier.observacion, pag_weeb: @supplier.pag_weeb, telefono_pais: @supplier.telefono_pais, tipo_proveedor: @supplier.tipo_proveedor } }
    assert_redirected_to supplier_url(@supplier)
  end

  test "should destroy supplier" do
    assert_difference('Supplier.count', -1) do
      delete supplier_url(@supplier)
    end

    assert_redirected_to suppliers_url
  end
end
