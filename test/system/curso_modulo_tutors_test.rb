require "application_system_test_case"

class CursoModuloTutorsTest < ApplicationSystemTestCase
  setup do
    @curso_modulo_tutor = curso_modulo_tutors(:one)
  end

  test "visiting the index" do
    visit curso_modulo_tutors_url
    assert_selector "h1", text: "Curso Modulo Tutors"
  end

  test "creating a Curso modulo tutor" do
    visit curso_modulo_tutors_url
    click_on "New Curso Modulo Tutor"

    fill_in "Curso", with: @curso_modulo_tutor.curso_id
    fill_in "Modulo", with: @curso_modulo_tutor.modulo_id
    fill_in "Tutor", with: @curso_modulo_tutor.tutor_id
    click_on "Create Curso modulo tutor"

    assert_text "Curso modulo tutor was successfully created"
    click_on "Back"
  end

  test "updating a Curso modulo tutor" do
    visit curso_modulo_tutors_url
    click_on "Edit", match: :first

    fill_in "Curso", with: @curso_modulo_tutor.curso_id
    fill_in "Modulo", with: @curso_modulo_tutor.modulo_id
    fill_in "Tutor", with: @curso_modulo_tutor.tutor_id
    click_on "Update Curso modulo tutor"

    assert_text "Curso modulo tutor was successfully updated"
    click_on "Back"
  end

  test "destroying a Curso modulo tutor" do
    visit curso_modulo_tutors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Curso modulo tutor was successfully destroyed"
  end
end
