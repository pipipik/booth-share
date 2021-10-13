require 'test_helper'

class BoothsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get booths_index_url
    assert_response :success
  end

end
