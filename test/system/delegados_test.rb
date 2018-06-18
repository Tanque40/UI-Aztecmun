require "application_system_test_case"

class DelegadosTest < ApplicationSystemTestCase
  setup do
    @delegado = delegados(:one)
  end

  test "visiting the index" do
    visit delegados_url
    assert_selector "h1", text: "Delegados"
  end

  test "creating a Delegado" do
    visit delegados_url
    click_on "New Delegado"

    fill_in "Comite", with: @delegado.comite_id
    fill_in "Pais", with: @delegado.pais
    click_on "Create Delegado"

    assert_text "Delegado was successfully created"
    click_on "Back"
  end

  test "updating a Delegado" do
    visit delegados_url
    click_on "Edit", match: :first

    fill_in "Comite", with: @delegado.comite_id
    fill_in "Pais", with: @delegado.pais
    click_on "Update Delegado"

    assert_text "Delegado was successfully updated"
    click_on "Back"
  end

  test "destroying a Delegado" do
    visit delegados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Delegado was successfully destroyed"
  end
end
