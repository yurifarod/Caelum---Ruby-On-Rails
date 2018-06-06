require 'test_helper'

class QualicacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qualicacao = qualicacaos(:one)
  end

  test "should get index" do
    get qualicacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_qualicacao_url
    assert_response :success
  end

  test "should create qualicacao" do
    assert_difference('Qualicacao.count') do
      post qualicacaos_url, params: { qualicacao: { cliente_id: @qualicacao.cliente_id, nota: @qualicacao.nota, restaurante_id: @qualicacao.restaurante_id, valor_gasto: @qualicacao.valor_gasto } }
    end

    assert_redirected_to qualicacao_url(Qualicacao.last)
  end

  test "should show qualicacao" do
    get qualicacao_url(@qualicacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_qualicacao_url(@qualicacao)
    assert_response :success
  end

  test "should update qualicacao" do
    patch qualicacao_url(@qualicacao), params: { qualicacao: { cliente_id: @qualicacao.cliente_id, nota: @qualicacao.nota, restaurante_id: @qualicacao.restaurante_id, valor_gasto: @qualicacao.valor_gasto } }
    assert_redirected_to qualicacao_url(@qualicacao)
  end

  test "should destroy qualicacao" do
    assert_difference('Qualicacao.count', -1) do
      delete qualicacao_url(@qualicacao)
    end

    assert_redirected_to qualicacaos_url
  end
end
