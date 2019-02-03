require "application_system_test_case"

class ApartmentsTest < ApplicationSystemTestCase
  setup do
    @apartment = apartments(:one)
  end

  test "visiting the index" do
    visit apartments_url
    assert_selector "h1", text: "Apartments"
  end

  test "creating a Apartment" do
    visit apartments_url
    click_on "New Apartment"

    fill_in "Bathroom count", with: @apartment.bathroom_count
    fill_in "Bedroom count", with: @apartment.bedroom_count
    fill_in "Built square meters", with: @apartment.built_square_meters
    fill_in "Comment", with: @apartment.comment
    fill_in "Common expenses", with: @apartment.common_expenses
    fill_in "Contact status", with: @apartment.contact_status
    fill_in "Link", with: @apartment.link
    fill_in "Near", with: @apartment.near
    fill_in "Price", with: @apartment.price
    fill_in "Terrace square meters", with: @apartment.terrace_square_meters
    fill_in "Total price", with: @apartment.total_price
    click_on "Create Apartment"

    assert_text "Apartment was successfully created"
    click_on "Back"
  end

  test "updating a Apartment" do
    visit apartments_url
    click_on "Edit", match: :first

    fill_in "Bathroom count", with: @apartment.bathroom_count
    fill_in "Bedroom count", with: @apartment.bedroom_count
    fill_in "Built square meters", with: @apartment.built_square_meters
    fill_in "Comment", with: @apartment.comment
    fill_in "Common expenses", with: @apartment.common_expenses
    fill_in "Contact status", with: @apartment.contact_status
    fill_in "Link", with: @apartment.link
    fill_in "Near", with: @apartment.near
    fill_in "Price", with: @apartment.price
    fill_in "Terrace square meters", with: @apartment.terrace_square_meters
    fill_in "Total price", with: @apartment.total_price
    click_on "Update Apartment"

    assert_text "Apartment was successfully updated"
    click_on "Back"
  end

  test "destroying a Apartment" do
    visit apartments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apartment was successfully destroyed"
  end
end
