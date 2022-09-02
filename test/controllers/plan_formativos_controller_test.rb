require "test_helper"

class PlanFormativosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plan_formativo = plan_formativos(:one)
  end

  test "should get index" do
    get plan_formativos_url
    assert_response :success
  end

  test "should get new" do
    get new_plan_formativo_url
    assert_response :success
  end

  test "should create plan_formativo" do
    assert_difference('PlanFormativo.count') do
      post plan_formativos_url, params: { plan_formativo: { descripcion: @plan_formativo.descripcion, duracion_horas: @plan_formativo.duracion_horas } }
    end

    assert_redirected_to plan_formativo_url(PlanFormativo.last)
  end

  test "should show plan_formativo" do
    get plan_formativo_url(@plan_formativo)
    assert_response :success
  end

  test "should get edit" do
    get edit_plan_formativo_url(@plan_formativo)
    assert_response :success
  end

  test "should update plan_formativo" do
    patch plan_formativo_url(@plan_formativo), params: { plan_formativo: { descripcion: @plan_formativo.descripcion, duracion_horas: @plan_formativo.duracion_horas } }
    assert_redirected_to plan_formativo_url(@plan_formativo)
  end

  test "should destroy plan_formativo" do
    assert_difference('PlanFormativo.count', -1) do
      delete plan_formativo_url(@plan_formativo)
    end

    assert_redirected_to plan_formativos_url
  end
end
