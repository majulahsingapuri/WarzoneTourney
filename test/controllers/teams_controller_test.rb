require "test_helper"

class TeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team = teams(:one)
  end

  test "should get index" do
    get teams_url
    assert_response :success
  end

  test "should get new" do
    get new_team_url
    assert_response :found
  end

  test "should create team" do
    post teams_url, params: { team: { leader_IGN: 123, leader_name: 123, member1_IGN: 123, member1_name: 123, member2_IGN: 123, member2_name: 123, user_id: 1 } }
  end

  test "should show team" do
    get team_url(@team)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_url(@team)
    assert_response :found
  end

  test "should update team" do
    patch team_url(@team), params: { team: { leader_IGN: 123, leader_name: 123, member1_IGN: 123, member1_name: 123, member2_IGN: 123, member2_name: 123, user_id: 1 } }
  end

  test "should destroy team" do
    delete team_url(@team)
  end
end
