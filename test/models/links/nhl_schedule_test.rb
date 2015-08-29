require 'test_helper'

class Links::NhlScheduleTest < ActiveSupport::TestCase

  test "#site_name" do
    assert_equal "NHL.com", Links::NhlSchedule.new.site_name
  end

  test "#description" do
    assert_equal "Schedule", Links::NhlSchedule.new.description
  end

  test "#url" do
    season = seasons(:fourteen)
    team = teams(:caps)
    game_type = "regular"

    url = "http://www.nhl.com/ice/schedulebyseason.htm?season=20142015&gameType=2&team=WSH&network=&venue="
    link = Links::NhlSchedule.new(team: team, season: season, game_type: game_type)
    assert_equal url, link.url
  end

  test "#group" do
    assert_equal 0, Links::NhlSchedule.new.group
  end

  test "#position" do
    assert_equal 0, Links::NhlSchedule.new.position
  end

end
