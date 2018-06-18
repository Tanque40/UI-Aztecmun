require 'test_helper'

class DelegadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delegado = delegados(:one)
  end

  test "should get index" do
    get delegados_url
    assert_response :success
  end

  test "should get new" do
    get new_delegado_url
    assert_response :success
  end

  test "should create delegado" do
    assert_difference('Delegado.count') do
      post delegados_url, params: { delegado: { comite_id: @delegado.comite_id, pais: @delegado.pais } }
    end

    assert_redirected_to delegado_url(Delegado.last)
  end

  test "should show delegado" do
    get delegado_url(@delegado)
    assert_response :success
  end

  test "should get edit" do
    get edit_delegado_url(@delegado)
    assert_response :success
  end

  test "should update delegado" do
    patch delegado_url(@delegado), params: { delegado: { comite_id: @delegado.comite_id, pais: @delegado.pais } }
    assert_redirected_to delegado_url(@delegado)
  end

  test "should destroy delegado" do
    assert_difference('Delegado.count', -1) do
      delete delegado_url(@delegado)
    end

    assert_redirected_to delegados_url
  end
end
