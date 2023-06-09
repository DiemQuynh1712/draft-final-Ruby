require "application_system_test_case"

class BookingsTest < ApplicationSystemTestCase
  setup do
    @booking = bookings(:one)
  end

  test "visiting the index" do
    visit bookings_url
    assert_selector "h1", text: "Bookings"
  end

  test "should create booking" do
    visit bookings_url
    click_on "New booking"

    fill_in "Check in date", with: @booking.check_in_date
    fill_in "Date of birth", with: @booking.date_of_birth
    fill_in "Gmail", with: @booking.gmail
    fill_in "Name", with: @booking.name
    fill_in "Num adults", with: @booking.num_adults
    fill_in "Num children", with: @booking.num_children
    fill_in "Number of nights", with: @booking.number_of_nights
    fill_in "Phone number", with: @booking.phone_number
    fill_in "Roomtype", with: @booking.roomtype_id
    fill_in "Service", with: @booking.service
    click_on "Create Booking"

    assert_text "Booking was successfully created"
    click_on "Back"
  end

  test "should update Booking" do
    visit booking_url(@booking)
    click_on "Edit this booking", match: :first

    fill_in "Check in date", with: @booking.check_in_date
    fill_in "Date of birth", with: @booking.date_of_birth
    fill_in "Gmail", with: @booking.gmail
    fill_in "Name", with: @booking.name
    fill_in "Num adults", with: @booking.num_adults
    fill_in "Num children", with: @booking.num_children
    fill_in "Number of nights", with: @booking.number_of_nights
    fill_in "Phone number", with: @booking.phone_number
    fill_in "Roomtype", with: @booking.roomtype_id
    fill_in "Service", with: @booking.service
    click_on "Update Booking"

    assert_text "Booking was successfully updated"
    click_on "Back"
  end

  test "should destroy Booking" do
    visit booking_url(@booking)
    click_on "Destroy this booking", match: :first

    assert_text "Booking was successfully destroyed"
  end
end
