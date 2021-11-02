require 'test_helper'

class SalaBatePaposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sala_bate_papo = sala_bate_papos(:one)
  end

  test "should get index" do
    get sala_bate_papos_url
    assert_response :success
  end

  test "should get new" do
    get new_sala_bate_papo_url
    assert_response :success
  end

  test "should create sala_bate_papo" do
    assert_difference('SalaBatePapo.count') do
      post sala_bate_papos_url, params: { sala_bate_papo: { topico: @sala_bate_papo.topico } }
    end

    assert_redirected_to sala_bate_papo_url(SalaBatePapo.last)
  end

  test "should show sala_bate_papo" do
    get sala_bate_papo_url(@sala_bate_papo)
    assert_response :success
  end

  test "should get edit" do
    get edit_sala_bate_papo_url(@sala_bate_papo)
    assert_response :success
  end

  test "should update sala_bate_papo" do
    patch sala_bate_papo_url(@sala_bate_papo), params: { sala_bate_papo: { topico: @sala_bate_papo.topico } }
    assert_redirected_to sala_bate_papo_url(@sala_bate_papo)
  end

  test "should destroy sala_bate_papo" do
    assert_difference('SalaBatePapo.count', -1) do
      delete sala_bate_papo_url(@sala_bate_papo)
    end

    assert_redirected_to sala_bate_papos_url
  end
end
