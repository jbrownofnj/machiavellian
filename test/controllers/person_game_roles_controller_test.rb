require "test_helper"

class PersonGameRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_game_role = person_game_roles(:one)
  end

  test "should get index" do
    get person_game_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_person_game_role_url
    assert_response :success
  end

  test "should create person_game_role" do
    assert_difference("PersonGameRole.count") do
      post person_game_roles_url, params: { person_game_role: { game_id: @person_game_role.game_id, person_game_role_type: @person_game_role.person_game_role_type, person_id: @person_game_role.person_id } }
    end

    assert_redirected_to person_game_role_url(PersonGameRole.last)
  end

  test "should show person_game_role" do
    get person_game_role_url(@person_game_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_game_role_url(@person_game_role)
    assert_response :success
  end

  test "should update person_game_role" do
    patch person_game_role_url(@person_game_role), params: { person_game_role: { game_id: @person_game_role.game_id, person_game_role_type: @person_game_role.person_game_role_type, person_id: @person_game_role.person_id } }
    assert_redirected_to person_game_role_url(@person_game_role)
  end

  test "should destroy person_game_role" do
    assert_difference("PersonGameRole.count", -1) do
      delete person_game_role_url(@person_game_role)
    end

    assert_redirected_to person_game_roles_url
  end
end
