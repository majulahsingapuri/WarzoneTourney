require "application_system_test_case"

class TeamsTest < ApplicationSystemTestCase
  setup do
    @team = teams(:one)
  end

  test "visiting the index" do
    visit teams_url
    assert_selector "h1", text: "Teams"
  end

  test "creating a Team" do
    visit teams_url
    click_on "New Team"

    fill_in "Leader ign", with: @team.leader_IGN
    fill_in "Leader name", with: @team.leader_name
    fill_in "Member1 ign", with: @team.member1_IGN
    fill_in "Member1 name", with: @team.member1_name
    fill_in "Member2 ign", with: @team.member2_IGN
    fill_in "Member2 name", with: @team.member2_name
    click_on "Create Team"

    assert_text "Team was successfully created"
    click_on "Back"
  end

  test "updating a Team" do
    visit teams_url
    click_on "Edit", match: :first

    fill_in "Leader ign", with: @team.leader_IGN
    fill_in "Leader name", with: @team.leader_name
    fill_in "Member1 ign", with: @team.member1_IGN
    fill_in "Member1 name", with: @team.member1_name
    fill_in "Member2 ign", with: @team.member2_IGN
    fill_in "Member2 name", with: @team.member2_name
    click_on "Update Team"

    assert_text "Team was successfully updated"
    click_on "Back"
  end

  test "destroying a Team" do
    visit teams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Team was successfully destroyed"
  end
end
