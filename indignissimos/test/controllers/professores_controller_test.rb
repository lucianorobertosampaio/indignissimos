require 'test_helper'

class ProfessoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professore = professores(:one)
  end

  test "should get index" do
    get professores_url
    assert_response :success
  end

  test "should get new" do
    get new_professore_url
    assert_response :success
  end

  test "should create professore" do
    assert_difference('Professore.count') do
      post professores_url, params: { professore: { idade: @professore.idade, nome: @professore.nome, salario: @professore.salario, sobre: @professore.sobre } }
    end

    assert_redirected_to professore_url(Professore.last)
  end

  test "should show professore" do
    get professore_url(@professore)
    assert_response :success
  end

  test "should get edit" do
    get edit_professore_url(@professore)
    assert_response :success
  end

  test "should update professore" do
    patch professore_url(@professore), params: { professore: { idade: @professore.idade, nome: @professore.nome, salario: @professore.salario, sobre: @professore.sobre } }
    assert_redirected_to professore_url(@professore)
  end

  test "should destroy professore" do
    assert_difference('Professore.count', -1) do
      delete professore_url(@professore)
    end

    assert_redirected_to professores_url
  end
end
