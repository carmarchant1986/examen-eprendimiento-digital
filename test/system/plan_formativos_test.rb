require "application_system_test_case"

class PlanFormativosTest < ApplicationSystemTestCase
  setup do
    @plan_formativo = plan_formativos(:one)
  end

  test "visiting the index" do
    visit plan_formativos_url
    assert_selector "h1", text: "Plan Formativos"
  end

  test "creating a Plan formativo" do
    visit plan_formativos_url
    click_on "New Plan Formativo"

    fill_in "Descripcion", with: @plan_formativo.descripcion
    fill_in "Duracion horas", with: @plan_formativo.duracion_horas
    click_on "Create Plan formativo"

    assert_text "Plan formativo was successfully created"
    click_on "Back"
  end

  test "updating a Plan formativo" do
    visit plan_formativos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @plan_formativo.descripcion
    fill_in "Duracion horas", with: @plan_formativo.duracion_horas
    click_on "Update Plan formativo"

    assert_text "Plan formativo was successfully updated"
    click_on "Back"
  end

  test "destroying a Plan formativo" do
    visit plan_formativos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plan formativo was successfully destroyed"
  end
end
