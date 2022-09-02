require "test_helper"

class CursoModuloTutorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curso_modulo_tutor = curso_modulo_tutors(:one)
  end

  test "should get index" do
    get curso_modulo_tutors_url
    assert_response :success
  end

  test "should get new" do
    get new_curso_modulo_tutor_url
    assert_response :success
  end

  test "should create curso_modulo_tutor" do
    assert_difference('CursoModuloTutor.count') do
      post curso_modulo_tutors_url, params: { curso_modulo_tutor: { curso_id: @curso_modulo_tutor.curso_id, modulo_id: @curso_modulo_tutor.modulo_id, tutor_id: @curso_modulo_tutor.tutor_id } }
    end

    assert_redirected_to curso_modulo_tutor_url(CursoModuloTutor.last)
  end

  test "should show curso_modulo_tutor" do
    get curso_modulo_tutor_url(@curso_modulo_tutor)
    assert_response :success
  end

  test "should get edit" do
    get edit_curso_modulo_tutor_url(@curso_modulo_tutor)
    assert_response :success
  end

  test "should update curso_modulo_tutor" do
    patch curso_modulo_tutor_url(@curso_modulo_tutor), params: { curso_modulo_tutor: { curso_id: @curso_modulo_tutor.curso_id, modulo_id: @curso_modulo_tutor.modulo_id, tutor_id: @curso_modulo_tutor.tutor_id } }
    assert_redirected_to curso_modulo_tutor_url(@curso_modulo_tutor)
  end

  test "should destroy curso_modulo_tutor" do
    assert_difference('CursoModuloTutor.count', -1) do
      delete curso_modulo_tutor_url(@curso_modulo_tutor)
    end

    assert_redirected_to curso_modulo_tutors_url
  end
end
