require 'test_helper'

class SuperBeingsControllerTest < ActionController::TestCase
  setup do
    @super_being = super_beings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:super_beings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create super_being" do
    assert_difference('SuperBeing.count') do
      post :create, super_being: { arch_nemesis_id: @super_being.arch_nemesis_id, confirmed_kills: @super_being.confirmed_kills, human: @super_being.human, name: @super_being.name, power: @super_being.power, team_id: @super_being.team_id }
    end

    assert_redirected_to super_being_path(assigns(:super_being))
  end

  test "should show super_being" do
    get :show, id: @super_being
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @super_being
    assert_response :success
  end

  test "should update super_being" do
    patch :update, id: @super_being, super_being: { arch_nemesis_id: @super_being.arch_nemesis_id, confirmed_kills: @super_being.confirmed_kills, human: @super_being.human, name: @super_being.name, power: @super_being.power, team_id: @super_being.team_id }
    assert_redirected_to super_being_path(assigns(:super_being))
  end

  test "should destroy super_being" do
    assert_difference('SuperBeing.count', -1) do
      delete :destroy, id: @super_being
    end

    assert_redirected_to super_beings_path
  end
end
