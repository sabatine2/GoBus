require 'test_helper'

class OnibusesControllerTest < ActionController::TestCase
  setup do
    @onibus = onibuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:onibuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create onibus" do
    assert_difference('Onibus.count') do
      post :create, onibus: { ativo: @onibus.ativo, linha_id: @onibus.linha_id, placa: @onibus.placa }
    end

    assert_redirected_to onibus_path(assigns(:onibus))
  end

  test "should show onibus" do
    get :show, id: @onibus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @onibus
    assert_response :success
  end

  test "should update onibus" do
    patch :update, id: @onibus, onibus: { ativo: @onibus.ativo, linha_id: @onibus.linha_id, placa: @onibus.placa }
    assert_redirected_to onibus_path(assigns(:onibus))
  end

  test "should destroy onibus" do
    assert_difference('Onibus.count', -1) do
      delete :destroy, id: @onibus
    end

    assert_redirected_to onibuses_path
  end
end
