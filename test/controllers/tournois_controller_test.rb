require 'test_helper'

class TournoisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tournoi = tournois(:one)
  end

  test "should get index" do
    get tournois_url
    assert_response :success
  end

  test "should get new" do
    get new_tournoi_url
    assert_response :success
  end

  test "should create tournoi" do
    assert_difference('Tournoi.count') do
      post tournois_url, params: { tournoi: { date: @tournoi.date, game: @tournoi.game, name: @tournoi.name, players: @tournoi.players, time: @tournoi.time } }
    end

    assert_redirected_to tournoi_url(Tournoi.last)
  end

  test "should show tournoi" do
    get tournoi_url(@tournoi)
    assert_response :success
  end

  test "should get edit" do
    get edit_tournoi_url(@tournoi)
    assert_response :success
  end

  test "should update tournoi" do
    patch tournoi_url(@tournoi), params: { tournoi: { date: @tournoi.date, game: @tournoi.game, name: @tournoi.name, players: @tournoi.players, time: @tournoi.time } }
    assert_redirected_to tournoi_url(@tournoi)
  end

  test "should destroy tournoi" do
    assert_difference('Tournoi.count', -1) do
      delete tournoi_url(@tournoi)
    end

    assert_redirected_to tournois_url
  end
end
