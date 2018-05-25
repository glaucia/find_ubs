require 'test_helper'

class UbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ub = ubs(:one)
  end

  test "should get index" do
    get ubs_url, as: :json
    assert_response :success
  end

  test "should create ub" do
    assert_difference('Ub.count') do
      post ubs_url, params: { ub: { address: @ub.address, adptation_for_senior: @ub.adptation_for_senior, city: @ub.city, lat: @ub.lat, long: @ub.long, medical_equipament: @ub.medical_equipament, medicine: @ub.medicine, name: @ub.name, phone: @ub.phone, size: @ub.size } }, as: :json
    end

    assert_response 201
  end

  test "should show ub" do
    get ub_url(@ub), as: :json
    assert_response :success
  end

  test "should update ub" do
    patch ub_url(@ub), params: { ub: { address: @ub.address, adptation_for_senior: @ub.adptation_for_senior, city: @ub.city, lat: @ub.lat, long: @ub.long, medical_equipament: @ub.medical_equipament, medicine: @ub.medicine, name: @ub.name, phone: @ub.phone, size: @ub.size } }, as: :json
    assert_response 200
  end

  test "should destroy ub" do
    assert_difference('Ub.count', -1) do
      delete ub_url(@ub), as: :json
    end

    assert_response 204
  end
end
