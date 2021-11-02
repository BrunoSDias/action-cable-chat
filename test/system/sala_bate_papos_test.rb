require "application_system_test_case"

class SalaBatePaposTest < ApplicationSystemTestCase
  setup do
    @sala_bate_papo = sala_bate_papos(:one)
  end

  test "visiting the index" do
    visit sala_bate_papos_url
    assert_selector "h1", text: "Sala Bate Papos"
  end

  test "creating a Sala bate papo" do
    visit sala_bate_papos_url
    click_on "New Sala Bate Papo"

    fill_in "Topico", with: @sala_bate_papo.topico
    click_on "Create Sala bate papo"

    assert_text "Sala bate papo was successfully created"
    click_on "Back"
  end

  test "updating a Sala bate papo" do
    visit sala_bate_papos_url
    click_on "Edit", match: :first

    fill_in "Topico", with: @sala_bate_papo.topico
    click_on "Update Sala bate papo"

    assert_text "Sala bate papo was successfully updated"
    click_on "Back"
  end

  test "destroying a Sala bate papo" do
    visit sala_bate_papos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sala bate papo was successfully destroyed"
  end
end
