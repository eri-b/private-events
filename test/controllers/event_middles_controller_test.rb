require 'test_helper'

class EventMiddlesControllerTest < ActionDispatch::IntegrationTest
  test "should get attend" do
    get event_middles_attend_url
    assert_response :success
  end

end
