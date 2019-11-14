require 'test_helper'

class AlunoprofessorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alunoprofessor = alunoprofessors(:one)
  end

  test "should get index" do
    get alunoprofessors_url
    assert_response :success
  end

  test "should get new" do
    get new_alunoprofessor_url
    assert_response :success
  end

  test "should create alunoprofessor" do
    assert_difference('Alunoprofessor.count') do
      post alunoprofessors_url, params: { alunoprofessor: { aluno_id: @alunoprofessor.aluno_id, professor_id: @alunoprofessor.professor_id } }
    end

    assert_redirected_to alunoprofessor_url(Alunoprofessor.last)
  end

  test "should show alunoprofessor" do
    get alunoprofessor_url(@alunoprofessor)
    assert_response :success
  end

  test "should get edit" do
    get edit_alunoprofessor_url(@alunoprofessor)
    assert_response :success
  end

  test "should update alunoprofessor" do
    patch alunoprofessor_url(@alunoprofessor), params: { alunoprofessor: { aluno_id: @alunoprofessor.aluno_id, professor_id: @alunoprofessor.professor_id } }
    assert_redirected_to alunoprofessor_url(@alunoprofessor)
  end

  test "should destroy alunoprofessor" do
    assert_difference('Alunoprofessor.count', -1) do
      delete alunoprofessor_url(@alunoprofessor)
    end

    assert_redirected_to alunoprofessors_url
  end
end
