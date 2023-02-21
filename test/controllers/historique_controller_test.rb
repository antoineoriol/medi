require "test_helper"

class HistoriqueControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get historique_index_url
    assert_response :success
  end
end
