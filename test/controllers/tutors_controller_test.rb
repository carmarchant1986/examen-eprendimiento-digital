require "test_helper"

class TutorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tutor = tutors(:one)
  end

  test "should get index" do
    get tutors_url
    assert_response :success
  end

  test "should get new" do
    get new_tutor_url
    assert_response :success
  end

  test "should create tutor" do
    assert_difference('Tutor.count') do
      post tutors_url, params: { tutor: { apellido_mat: @tutor.apellido_mat, apellido_pat: @tutor.apellido_pat, cargo: @tutor.cargo, comuna_id: @tutor.comuna_id, direccion: @tutor.direccion, nombre: @tutor.nombre, rut: @tutor.rut, sueldo_hora: @tutor.sueldo_hora } }
    end

    assert_redirected_to tutor_url(Tutor.last)
  end

  test "should show tutor" do
    get tutor_url(@tutor)
    assert_response :success
  end

  test "should get edit" do
    get edit_tutor_url(@tutor)
    assert_response :success
  end

  test "should update tutor" do
    patch tutor_url(@tutor), params: { tutor: { apellido_mat: @tutor.apellido_mat, apellido_pat: @tutor.apellido_pat, cargo: @tutor.cargo, comuna_id: @tutor.comuna_id, direccion: @tutor.direccion, nombre: @tutor.nombre, rut: @tutor.rut, sueldo_hora: @tutor.sueldo_hora } }
    assert_redirected_to tutor_url(@tutor)
  end

  test "should destroy tutor" do
    assert_difference('Tutor.count', -1) do
      delete tutor_url(@tutor)
    end

    assert_redirected_to tutors_url
  end
end
