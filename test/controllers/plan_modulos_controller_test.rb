require "test_helper"

class PlanModulosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plan_modulo = plan_modulos(:one)
  end

  test "should get index" do
    get plan_modulos_url
    assert_response :success
  end

  test "should get new" do
    get new_plan_modulo_url
    assert_response :success
  end

  test "should create plan_modulo" do
    assert_difference('PlanModulo.count') do
      post plan_modulos_url, params: { plan_modulo: { references: @plan_modulo.references } }
    end

    assert_redirected_to plan_modulo_url(PlanModulo.last)
  end

  test "should show plan_modulo" do
    get plan_modulo_url(@plan_modulo)
    assert_response :success
  end

  test "should get edit" do
    get edit_plan_modulo_url(@plan_modulo)
    assert_response :success
  end

  test "should update plan_modulo" do
    patch plan_modulo_url(@plan_modulo), params: { plan_modulo: { references: @plan_modulo.references } }
    assert_redirected_to plan_modulo_url(@plan_modulo)
  end

  test "should destroy plan_modulo" do
    assert_difference('PlanModulo.count', -1) do
      delete plan_modulo_url(@plan_modulo)
    end

    assert_redirected_to plan_modulos_url
  end
end
