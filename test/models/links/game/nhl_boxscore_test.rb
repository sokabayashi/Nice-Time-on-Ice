require 'test_helper'

class Links::Game::NhlBoxscoreTest < ActiveSupport::TestCase

  test "#site_name" do
    assert_equal "NHL.com", Links::Game::NhlBoxscore.new.site_name
  end

  test "#description" do
    assert_equal "Boxscore", Links::Game::NhlBoxscore.new.description
  end

  test "#url" do
    season = seasons(:fourteen)
    team = teams(:caps)
    game = games(:game_one)
    game_type = "regular"

    url = "http://www.nhl.com/ice/boxscore.htm?id=2014021201"

    link = Links::Game::NhlBoxscore.new(team: team, season: season, game: game, game_type: game_type)
    assert_equal url, link.url
  end

  test "#group" do
    assert_equal 0, Links::Game::NhlBoxscore.new.group
  end

  test "#position" do
    assert_equal 0, Links::Game::NhlBoxscore.new.position
  end

end
