require 'test_helper'

class ElementosControllerTest < ActionController::TestCase
  setup do
    @elemento = elementos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:elementos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create elemento" do
    assert_difference('Elemento.count') do
      post :create, elemento: { codigo_contable: @elemento.codigo_contable, codigo_interno: @elemento.codigo_interno, descripcion: @elemento.descripcion, identificacion: @elemento.identificacion, nombre: @elemento.nombre, tipo_elemento_id: @elemento.tipo_elemento_id }
    end

    assert_redirected_to elemento_path(assigns(:elemento))
  end

  test "should show elemento" do
    get :show, id: @elemento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @elemento
    assert_response :success
  end

  test "should update elemento" do
    patch :update, id: @elemento, elemento: { codigo_contable: @elemento.codigo_contable, codigo_interno: @elemento.codigo_interno, descripcion: @elemento.descripcion, identificacion: @elemento.identificacion, nombre: @elemento.nombre, tipo_elemento_id: @elemento.tipo_elemento_id }
    assert_redirected_to elemento_path(assigns(:elemento))
  end

  test "should destroy elemento" do
    assert_difference('Elemento.count', -1) do
      delete :destroy, id: @elemento
    end

    assert_redirected_to elementos_path
  end
end
