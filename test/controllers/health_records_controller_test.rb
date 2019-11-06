require 'test_helper'

class HealthRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health_record = health_records(:one)
  end

  test "should get index" do
    get health_records_url
    assert_response :success
  end

  test "should get new" do
    get new_health_record_url
    assert_response :success
  end

  test "should create health_record" do
    assert_difference('HealthRecord.count') do
      post health_records_url, params: { health_record: { birthday: @health_record.birthday, diagnosis: @health_record.diagnosis, history: @health_record.history, name: @health_record.name, recorded_by: @health_record.recorded_by } }
    end

    assert_redirected_to health_record_url(HealthRecord.last)
  end

  test "should show health_record" do
    get health_record_url(@health_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_health_record_url(@health_record)
    assert_response :success
  end

  test "should update health_record" do
    patch health_record_url(@health_record), params: { health_record: { birthday: @health_record.birthday, diagnosis: @health_record.diagnosis, history: @health_record.history, name: @health_record.name, recorded_by: @health_record.recorded_by } }
    assert_redirected_to health_record_url(@health_record)
  end

  test "should destroy health_record" do
    assert_difference('HealthRecord.count', -1) do
      delete health_record_url(@health_record)
    end

    assert_redirected_to health_records_url
  end
end
