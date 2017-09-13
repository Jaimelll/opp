require 'test_helper'

class ContractsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contract = contracts(:one)
  end

  test "should get index" do
    get contracts_url
    assert_response :success
  end

  test "should get new" do
    get new_contract_url
    assert_response :success
  end

  test "should create contract" do
    assert_difference('Contract.count') do
      post contracts_url, params: { contract: { admin_user_id: @contract.admin_user_id, area: @contract.area, cod_hor: @contract.cod_hor, employee_id: @contract.employee_id, fec_inicon: @contract.fec_inicon, fec_retiro: @contract.fec_retiro, fec_tercon: @contract.fec_tercon, motivo_retir: @contract.motivo_retir, num_cont: @contract.num_cont, obs: @contract.obs, puesto: @contract.puesto, remuneracion: @contract.remuneracion, tipo_contra: @contract.tipo_contra } }
    end

    assert_redirected_to contract_url(Contract.last)
  end

  test "should show contract" do
    get contract_url(@contract)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_url(@contract)
    assert_response :success
  end

  test "should update contract" do
    patch contract_url(@contract), params: { contract: { admin_user_id: @contract.admin_user_id, area: @contract.area, cod_hor: @contract.cod_hor, employee_id: @contract.employee_id, fec_inicon: @contract.fec_inicon, fec_retiro: @contract.fec_retiro, fec_tercon: @contract.fec_tercon, motivo_retir: @contract.motivo_retir, num_cont: @contract.num_cont, obs: @contract.obs, puesto: @contract.puesto, remuneracion: @contract.remuneracion, tipo_contra: @contract.tipo_contra } }
    assert_redirected_to contract_url(@contract)
  end

  test "should destroy contract" do
    assert_difference('Contract.count', -1) do
      delete contract_url(@contract)
    end

    assert_redirected_to contracts_url
  end
end
