require "application_system_test_case"

class ConsultantsTest < ApplicationSystemTestCase
  setup do
    @consultant = consultants(:one)
  end

  test "visiting the index" do
    visit consultants_url
    assert_selector "h1", text: "Consultants"
  end

  test "creating a Consultant" do
    visit consultants_url
    click_on "New Consultant"

    fill_in "Bio", with: @consultant.bio
    fill_in "First name", with: @consultant.first_name
    fill_in "Last name", with: @consultant.last_name
    fill_in "Phone", with: @consultant.phone
    fill_in "User", with: @consultant.user_id
    click_on "Create Consultant"

    assert_text "Consultant was successfully created"
    click_on "Back"
  end

  test "updating a Consultant" do
    visit consultants_url
    click_on "Edit", match: :first

    fill_in "Bio", with: @consultant.bio
    fill_in "First name", with: @consultant.first_name
    fill_in "Last name", with: @consultant.last_name
    fill_in "Phone", with: @consultant.phone
    fill_in "User", with: @consultant.user_id
    click_on "Update Consultant"

    assert_text "Consultant was successfully updated"
    click_on "Back"
  end

  test "destroying a Consultant" do
    visit consultants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consultant was successfully destroyed"
  end
end
