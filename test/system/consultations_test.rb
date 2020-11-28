require "application_system_test_case"

class ConsultationsTest < ApplicationSystemTestCase
  setup do
    @consultation = consultations(:one)
  end

  test "visiting the index" do
    visit consultations_url
    assert_selector "h1", text: "Consultations"
  end

  test "creating a Consultation" do
    visit consultations_url
    click_on "New Consultation"

    fill_in "Category", with: @consultation.category
    fill_in "Cost in pennies", with: @consultation.cost_in_pennies
    fill_in "Description", with: @consultation.description
    fill_in "Duration in minutes", with: @consultation.duration_in_minutes
    fill_in "Level", with: @consultation.level
    fill_in "Number of sessions", with: @consultation.number_of_sessions
    fill_in "Sku", with: @consultation.sku
    fill_in "Title", with: @consultation.title
    click_on "Create Consultation"

    assert_text "Consultation was successfully created"
    click_on "Back"
  end

  test "updating a Consultation" do
    visit consultations_url
    click_on "Edit", match: :first

    fill_in "Category", with: @consultation.category
    fill_in "Cost in pennies", with: @consultation.cost_in_pennies
    fill_in "Description", with: @consultation.description
    fill_in "Duration in minutes", with: @consultation.duration_in_minutes
    fill_in "Level", with: @consultation.level
    fill_in "Number of sessions", with: @consultation.number_of_sessions
    fill_in "Sku", with: @consultation.sku
    fill_in "Title", with: @consultation.title
    click_on "Update Consultation"

    assert_text "Consultation was successfully updated"
    click_on "Back"
  end

  test "destroying a Consultation" do
    visit consultations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consultation was successfully destroyed"
  end
end
