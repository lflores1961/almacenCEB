require "application_system_test_case"

class PartidasTest < ApplicationSystemTestCase
  setup do
    @partida = partidas(:one)
  end

  test "visiting the index" do
    visit partidas_url
    assert_selector "h1", text: "Partidas"
  end

  test "creating a Partida" do
    visit partidas_url
    click_on "New Partida"

    fill_in "Clave", with: @partida.clave
    fill_in "Concepto", with: @partida.concepto_id
    fill_in "Description", with: @partida.description
    click_on "Create Partida"

    assert_text "Partida was successfully created"
    click_on "Back"
  end

  test "updating a Partida" do
    visit partidas_url
    click_on "Edit", match: :first

    fill_in "Clave", with: @partida.clave
    fill_in "Concepto", with: @partida.concepto_id
    fill_in "Description", with: @partida.description
    click_on "Update Partida"

    assert_text "Partida was successfully updated"
    click_on "Back"
  end

  test "destroying a Partida" do
    visit partidas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Partida was successfully destroyed"
  end
end
