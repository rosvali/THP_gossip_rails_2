require 'test_helper'

class EquipeControllerTest < ActionDispatch::IntegrationTest
  test "should get team" do
    get equipe_team_url
    assert_response :success
  end

end
