require 'test_helper'

class ClinicasControllerTest < ActionController::TestCase
  setup do
    @clinica = clinicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinica" do
    assert_difference('Clinica.count') do
      post :create, clinica: { cep: @clinica.cep, complemento: @clinica.complemento, email: @clinica.email, endereco: @clinica.endereco, latitude: @clinica.latitude, longitude: @clinica.longitude, modalidade: @clinica.modalidade, municipio: @clinica.municipio, nome: @clinica.nome, publico: @clinica.publico, publico_especifico: @clinica.publico_especifico, sexo_publico: @clinica.sexo_publico, telefone1: @clinica.telefone1, telefone2: @clinica.telefone2 }
    end

    assert_redirected_to clinica_path(assigns(:clinica))
  end

  test "should show clinica" do
    get :show, id: @clinica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinica
    assert_response :success
  end

  test "should update clinica" do
    patch :update, id: @clinica, clinica: { cep: @clinica.cep, complemento: @clinica.complemento, email: @clinica.email, endereco: @clinica.endereco, latitude: @clinica.latitude, longitude: @clinica.longitude, modalidade: @clinica.modalidade, municipio: @clinica.municipio, nome: @clinica.nome, publico: @clinica.publico, publico_especifico: @clinica.publico_especifico, sexo_publico: @clinica.sexo_publico, telefone1: @clinica.telefone1, telefone2: @clinica.telefone2 }
    assert_redirected_to clinica_path(assigns(:clinica))
  end

  test "should destroy clinica" do
    assert_difference('Clinica.count', -1) do
      delete :destroy, id: @clinica
    end

    assert_redirected_to clinicas_path
  end
end
