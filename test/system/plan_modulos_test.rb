require "application_system_test_case"

class PlanModulosTest < ApplicationSystemTestCase
  setup do
    @plan_modulo = plan_modulos(:one)
  end

  test "visiting the index" do
    visit plan_modulos_url
    assert_selector "h1", text: "Plan Modulos"
  end

  test "creating a Plan modulo" do
    visit plan_modulos_url
    click_on "New Plan Modulo"

    fill_in "References", with: @plan_modulo.references
    click_on "Create Plan modulo"

    assert_text "Plan modulo was successfully created"
    click_on "Back"
  end

  test "updating a Plan modulo" do
    visit plan_modulos_url
    click_on "Edit", match: :first

    fill_in "References", with: @plan_modulo.references
    click_on "Update Plan modulo"

    assert_text "Plan modulo was successfully updated"
    click_on "Back"
  end

  test "destroying a Plan modulo" do
    visit plan_modulos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plan modulo was successfully destroyed"
  end
end
