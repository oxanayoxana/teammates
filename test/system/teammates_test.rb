require "application_system_test_case"

class TeammatesTest < ApplicationSystemTestCase
  setup do
    @teammate = teammates(:one)
  end

  test "visiting the index" do
    visit teammates_url
    assert_selector "h1", text: "Teammates"
  end

  test "creating a Teammate" do
    visit teammates_url
    click_on "New Teammate"

    fill_in "About", with: @teammate.about
    fill_in "Name", with: @teammate.name
    fill_in "Role", with: @teammate.role
    click_on "Create Teammate"

    assert_text "Teammate was successfully created"
    click_on "Back"
  end

  test "updating a Teammate" do
    visit teammates_url
    click_on "Edit", match: :first

    fill_in "About", with: @teammate.about
    fill_in "Name", with: @teammate.name
    fill_in "Role", with: @teammate.role
    click_on "Update Teammate"

    assert_text "Teammate was successfully updated"
    click_on "Back"
  end

  test "destroying a Teammate" do
    visit teammates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teammate was successfully destroyed"
  end
end
