require "application_system_test_case"

class IncidentsTest < ApplicationSystemTestCase
  setup do
    @incident = incidents(:one)
  end

  test "visiting the index" do
    visit incidents_url
    assert_selector "h1", text: "Incidents"
  end

  test "creating a Incident" do
    visit incidents_url
    click_on "New Incident"

    fill_in "Address", with: @incident.address
    fill_in "Date", with: @incident.date
    fill_in "Details", with: @incident.details
    fill_in "Phone", with: @incident.phone
    fill_in "Reported by", with: @incident.reported_by
    click_on "Create Incident"

    assert_text "Incident was successfully created"
    click_on "Back"
  end

  test "updating a Incident" do
    visit incidents_url
    click_on "Edit", match: :first

    fill_in "Address", with: @incident.address
    fill_in "Date", with: @incident.date
    fill_in "Details", with: @incident.details
    fill_in "Phone", with: @incident.phone
    fill_in "Reported by", with: @incident.reported_by
    click_on "Update Incident"

    assert_text "Incident was successfully updated"
    click_on "Back"
  end

  test "destroying a Incident" do
    visit incidents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incident was successfully destroyed"
  end
end
