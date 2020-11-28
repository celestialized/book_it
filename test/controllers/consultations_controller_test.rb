require 'test_helper'

class ConsultationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consultation = consultations(:one)
  end

  test "should get index" do
    get consultations_url
    assert_response :success
  end

  test "should get new" do
    get new_consultation_url
    assert_response :success
  end

  test "should create consultation" do
    assert_difference('Consultation.count') do
      post consultations_url, params: { consultation: { category: @consultation.category, cost_in_pennies: @consultation.cost_in_pennies, description: @consultation.description, duration_in_minutes: @consultation.duration_in_minutes, level: @consultation.level, number_of_sessions: @consultation.number_of_sessions, sku: @consultation.sku, title: @consultation.title } }
    end

    assert_redirected_to consultation_url(Consultation.last)
  end

  test "should show consultation" do
    get consultation_url(@consultation)
    assert_response :success
  end

  test "should get edit" do
    get edit_consultation_url(@consultation)
    assert_response :success
  end

  test "should update consultation" do
    patch consultation_url(@consultation), params: { consultation: { category: @consultation.category, cost_in_pennies: @consultation.cost_in_pennies, description: @consultation.description, duration_in_minutes: @consultation.duration_in_minutes, level: @consultation.level, number_of_sessions: @consultation.number_of_sessions, sku: @consultation.sku, title: @consultation.title } }
    assert_redirected_to consultation_url(@consultation)
  end

  test "should destroy consultation" do
    assert_difference('Consultation.count', -1) do
      delete consultation_url(@consultation)
    end

    assert_redirected_to consultations_url
  end
end
