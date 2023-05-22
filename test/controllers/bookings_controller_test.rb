require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_url
    assert_response :success
  end

  test "should create booking" do
    assert_difference("Booking.count") do
      post bookings_url, params: { booking: { check_in_date: @booking.check_in_date, date_of_birth: @booking.date_of_birth, gmail: @booking.gmail, name: @booking.name, num_adults: @booking.num_adults, num_children: @booking.num_children, number_of_nights: @booking.number_of_nights, phone_number: @booking.phone_number, roomtype_id: @booking.roomtype_id, service: @booking.service } }
    end

    assert_redirected_to booking_url(Booking.last)
  end

  test "should show booking" do
    get booking_url(@booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_url(@booking)
    assert_response :success
  end

  test "should update booking" do
    patch booking_url(@booking), params: { booking: { check_in_date: @booking.check_in_date, date_of_birth: @booking.date_of_birth, gmail: @booking.gmail, name: @booking.name, num_adults: @booking.num_adults, num_children: @booking.num_children, number_of_nights: @booking.number_of_nights, phone_number: @booking.phone_number, roomtype_id: @booking.roomtype_id, service: @booking.service } }
    assert_redirected_to booking_url(@booking)
  end

  test "should destroy booking" do
    assert_difference("Booking.count", -1) do
      delete booking_url(@booking)
    end

    assert_redirected_to bookings_url
  end
end
