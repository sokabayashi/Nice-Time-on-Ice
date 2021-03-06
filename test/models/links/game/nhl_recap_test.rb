require 'test_helper'

class Links::Game::NhlRecapTest < ActiveSupport::TestCase

  test "#site_name" do
    assert_equal "NHL.com", Links::Game::NhlRecap.new.site_name
  end

  test "#description" do
    assert_equal "Recap", Links::Game::NhlRecap.new.description
  end

  test "#url" do
    season = seasons(:fourteen)
    team = teams(:caps)
    game = games(:game_one)
    game_type = "regular"

    url = "http://www.nhl.com/ice/recap.htm?id=2014021201"

    link = Links::Game::NhlRecap.new(team: team, season: season, game: game, game_type: game_type)
    assert_equal url, link.url
  end

  test "#group" do
    assert_equal 0, Links::Game::NhlRecap.new.group
  end

  test "#position" do
    assert_equal 1, Links::Game::NhlRecap.new.position
  end

end
