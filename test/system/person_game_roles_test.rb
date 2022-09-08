require "application_system_test_case"

class PersonGameRolesTest < ApplicationSystemTestCase
  setup do
    @person_game_role = person_game_roles(:one)
  end

  test "visiting the index" do
    visit person_game_roles_url
    assert_selector "h1", text: "Person game roles"
  end

  test "should create person game role" do
    visit person_game_roles_url
    click_on "New person game role"

    fill_in "Game", with: @person_game_role.game_id
    fill_in "Person game role type", with: @person_game_role.person_game_role_type
    fill_in "Person", with: @person_game_role.person_id
    click_on "Create Person game role"

    assert_text "Person game role was successfully created"
    click_on "Back"
  end

  test "should update Person game role" do
    visit person_game_role_url(@person_game_role)
    click_on "Edit this person game role", match: :first

    fill_in "Game", with: @person_game_role.game_id
    fill_in "Person game role type", with: @person_game_role.person_game_role_type
    fill_in "Person", with: @person_game_role.person_id
    click_on "Update Person game role"

    assert_text "Person game role was successfully updated"
    click_on "Back"
  end

  test "should destroy Person game role" do
    visit person_game_role_url(@person_game_role)
    click_on "Destroy this person game role", match: :first

    assert_text "Person game role was successfully destroyed"
  end
end
